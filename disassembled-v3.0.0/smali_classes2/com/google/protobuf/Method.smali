.class public final Lcom/google/protobuf/Method;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Method.java"

# interfaces
.implements Lcom/google/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Method$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_STREAMING_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_TYPE_URL_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_STREAMING_FIELD_NUMBER:I = 0x5

.field public static final RESPONSE_TYPE_URL_FIELD_NUMBER:I = 0x4

.field public static final SYNTAX_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private requestStreaming_:Z

.field private volatile requestTypeUrl_:Ljava/lang/Object;

.field private responseStreaming_:Z

.field private volatile responseTypeUrl_:Ljava/lang/Object;

.field private syntax_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1529
    new-instance v0, Lcom/google/protobuf/Method;

    invoke-direct {v0}, Lcom/google/protobuf/Method;-><init>()V

    sput-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    .line 1537
    new-instance v0, Lcom/google/protobuf/Method$1;

    invoke-direct {v0}, Lcom/google/protobuf/Method$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 362
    iput-byte v0, p0, Lcom/google/protobuf/Method;->memoizedIsInitialized:B

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    .line 26
    iput-object v0, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    .line 27
    iput-boolean v1, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    .line 29
    iput v1, p0, Lcom/google/protobuf/Method;->syntax_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/Method;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x20

    if-nez v1, :cond_b

    .line 48
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

    const/16 v6, 0x38

    if-eq v4, v6, :cond_1

    .line 54
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/Method;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 100
    iput v4, p0, Lcom/google/protobuf/Method;->syntax_:I

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v2, 0x20

    if-eq v4, v3, :cond_3

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 93
    :cond_3
    iget-object v4, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    .line 94
    invoke-static {}, Lcom/google/protobuf/Option;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    .line 93
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    goto :goto_0

    .line 78
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 80
    iput-object v4, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    goto :goto_0

    .line 67
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 69
    iput-object v4, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 63
    iput-object v4, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 108
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 109
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 106
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x20

    if-ne p2, v3, :cond_a

    .line 112
    iget-object p2, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    .line 114
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/Method;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 115
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x20

    if-ne p1, v3, :cond_c

    .line 112
    iget-object p1, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    .line 114
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Method;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 115
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Method$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Method;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 362
    iput-byte p1, p0, Lcom/google/protobuf/Method;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Method$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Method;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/protobuf/Method;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/google/protobuf/Method;->bitField0_:I

    return p1
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/protobuf/Method;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/protobuf/Method;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protobuf/Method;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/protobuf/Method;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protobuf/Method;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/protobuf/Method;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/protobuf/Method;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/protobuf/Method;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/google/protobuf/Method;->syntax_:I

    return p0
.end method

.method static synthetic access$902(Lcom/google/protobuf/Method;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/google/protobuf/Method;->syntax_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Method;
    .locals 1

    .line 1533
    sget-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 120
    sget-object v0, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Method_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Method$Builder;
    .locals 1

    .line 563
    sget-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->toBuilder()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Method;)Lcom/google/protobuf/Method$Builder;
    .locals 1

    .line 566
    sget-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->toBuilder()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Method$Builder;->mergeFrom(Lcom/google/protobuf/Method;)Lcom/google/protobuf/Method$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 538
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 545
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 505
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 551
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 558
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 526
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 533
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 494
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 500
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Method;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 1547
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 438
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/Method;

    if-nez v1, :cond_1

    .line 439
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 441
    :cond_1
    check-cast p1, Lcom/google/protobuf/Method;

    .line 444
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 446
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 448
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestStreaming()Z

    move-result v1

    .line 449
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getRequestStreaming()Z

    move-result v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 450
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 452
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseStreaming()Z

    move-result v1

    .line 453
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getResponseStreaming()Z

    move-result v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_7

    .line 454
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v1

    .line 455
    invoke-virtual {p1}, Lcom/google/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_8

    .line 456
    iget v1, p0, Lcom/google/protobuf/Method;->syntax_:I

    iget v3, p1, Lcom/google/protobuf/Method;->syntax_:I

    if-ne v1, v3, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_9

    .line 457
    iget-object v1, p0, Lcom/google/protobuf/Method;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/Method;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getDefaultInstanceForType()Lcom/google/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getDefaultInstanceForType()Lcom/google/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Method;
    .locals 1

    .line 1556
    sget-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    .line 142
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 143
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 145
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 147
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    .line 162
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Ljava/lang/String;

    .line 164
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 166
    iput-object v0, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    return-object v0

    .line 169
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option;

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 1552
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRequestStreaming()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    return v0
.end method

.method public getRequestTypeUrl()Ljava/lang/String;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    .line 184
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 187
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 189
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 190
    iput-object v0, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    .line 204
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 205
    check-cast v0, Ljava/lang/String;

    .line 206
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 208
    iput-object v0, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    return-object v0

    .line 211
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResponseStreaming()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    return v0
.end method

.method public getResponseTypeUrl()Ljava/lang/String;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    .line 239
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 240
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 242
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 244
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 245
    iput-object v0, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getResponseTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    .line 259
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 260
    check-cast v0, Ljava/lang/String;

    .line 261
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 263
    iput-object v0, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    return-object v0

    .line 266
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 399
    iget v0, p0, Lcom/google/protobuf/Method;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 406
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 407
    iget-object v3, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 409
    :cond_2
    iget-boolean v2, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 411
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 413
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 414
    iget-object v3, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 416
    :cond_4
    iget-boolean v2, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    .line 418
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 420
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x6

    .line 421
    iget-object v3, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    .line 422
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 424
    :cond_6
    iget v1, p0, Lcom/google/protobuf/Method;->syntax_:I

    sget-object v2, Lcom/google/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/google/protobuf/Syntax;

    invoke-virtual {v2}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_7

    const/4 v1, 0x7

    .line 425
    iget v2, p0, Lcom/google/protobuf/Method;->syntax_:I

    .line 426
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/Method;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 429
    iput v0, p0, Lcom/google/protobuf/Method;->memoizedSize:I

    return v0
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 1

    .line 358
    iget v0, p0, Lcom/google/protobuf/Method;->syntax_:I

    invoke-static {v0}, Lcom/google/protobuf/Syntax;->valueOf(I)Lcom/google/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_0

    .line 359
    sget-object v0, Lcom/google/protobuf/Syntax;->UNRECOGNIZED:Lcom/google/protobuf/Syntax;

    :cond_0
    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/google/protobuf/Method;->syntax_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/protobuf/Method;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 463
    iget v0, p0, Lcom/google/protobuf/Method;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 464
    iget v0, p0, Lcom/google/protobuf/Method;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 467
    invoke-static {}, Lcom/google/protobuf/Method;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 469
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 471
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 474
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestStreaming()Z

    move-result v1

    .line 473
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 476
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 479
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseStreaming()Z

    move-result v1

    .line 478
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 480
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 482
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 485
    iget v1, p0, Lcom/google/protobuf/Method;->syntax_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 486
    iget-object v1, p0, Lcom/google/protobuf/Method;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 487
    iput v0, p0, Lcom/google/protobuf/Method;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 125
    sget-object v0, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Method_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Method;

    const-class v2, Lcom/google/protobuf/Method$Builder;

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 364
    iget-byte v0, p0, Lcom/google/protobuf/Method;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 368
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/Method;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->newBuilderForType()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Method;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->newBuilderForType()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/Method$Builder;
    .locals 1

    .line 561
    invoke-static {}, Lcom/google/protobuf/Method;->newBuilder()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Method$Builder;
    .locals 2

    .line 576
    new-instance v0, Lcom/google/protobuf/Method$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/Method$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Method$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->toBuilder()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->toBuilder()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/Method$Builder;
    .locals 2

    .line 569
    sget-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Method$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Method$Builder;-><init>(Lcom/google/protobuf/Method$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/Method$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Method$Builder;-><init>(Lcom/google/protobuf/Method$1;)V

    .line 570
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Method$Builder;->mergeFrom(Lcom/google/protobuf/Method;)Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 378
    iget-object v1, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 380
    :cond_1
    iget-boolean v0, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 381
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 383
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 384
    iget-object v1, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 386
    :cond_3
    iget-boolean v0, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 387
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_4
    const/4 v0, 0x0

    .line 389
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    .line 390
    iget-object v2, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_5
    iget v0, p0, Lcom/google/protobuf/Method;->syntax_:I

    sget-object v1, Lcom/google/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/google/protobuf/Syntax;

    invoke-virtual {v1}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x7

    .line 393
    iget v1, p0, Lcom/google/protobuf/Method;->syntax_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 395
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/Method;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
