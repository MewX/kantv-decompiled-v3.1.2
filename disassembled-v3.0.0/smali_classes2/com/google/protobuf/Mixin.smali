.class public final Lcom/google/protobuf/Mixin;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Mixin.java"

# interfaces
.implements Lcom/google/protobuf/MixinOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Mixin$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Mixin;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Mixin;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROOT_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private volatile root_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 802
    new-instance v0, Lcom/google/protobuf/Mixin;

    invoke-direct {v0}, Lcom/google/protobuf/Mixin;-><init>()V

    sput-object v0, Lcom/google/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/google/protobuf/Mixin;

    .line 810
    new-instance v0, Lcom/google/protobuf/Mixin$1;

    invoke-direct {v0}, Lcom/google/protobuf/Mixin$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 238
    iput-byte v0, p0, Lcom/google/protobuf/Mixin;->memoizedIsInitialized:B

    const-string v0, ""

    .line 84
    iput-object v0, p0, Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;

    .line 85
    iput-object v0, p0, Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/google/protobuf/Mixin;-><init>()V

    .line 100
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 104
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 110
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/Mixin;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 125
    iput-object v2, p0, Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 119
    iput-object v2, p0, Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 133
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 134
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 131
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/Mixin;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 137
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->makeExtensionsImmutable()V

    throw p1

    .line 136
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Mixin;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 137
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Mixin$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Mixin;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 81
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 238
    iput-byte p1, p0, Lcom/google/protobuf/Mixin;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Mixin$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/google/protobuf/Mixin;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/Mixin;)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/protobuf/Mixin;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/protobuf/Mixin;)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/protobuf/Mixin;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 74
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Mixin;
    .locals 1

    .line 806
    sget-object v0, Lcom/google/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/google/protobuf/Mixin;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 142
    sget-object v0, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Mixin$Builder;
    .locals 1

    .line 382
    sget-object v0, Lcom/google/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/google/protobuf/Mixin;

    invoke-virtual {v0}, Lcom/google/protobuf/Mixin;->toBuilder()Lcom/google/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Mixin$Builder;
    .locals 1

    .line 385
    sget-object v0, Lcom/google/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/google/protobuf/Mixin;

    invoke-virtual {v0}, Lcom/google/protobuf/Mixin;->toBuilder()Lcom/google/protobuf/Mixin$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Mixin$Builder;->mergeFrom(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    .line 357
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    .line 364
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    .line 370
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    .line 377
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    .line 345
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    .line 352
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 334
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Mixin;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 820
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 280
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/Mixin;

    if-nez v1, :cond_1

    .line 281
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 283
    :cond_1
    check-cast p1, Lcom/google/protobuf/Mixin;

    .line 286
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {p1}, Lcom/google/protobuf/Mixin;->getName()Ljava/lang/String;

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

    .line 288
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {p1}, Lcom/google/protobuf/Mixin;->getRoot()Ljava/lang/String;

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

    .line 290
    iget-object v1, p0, Lcom/google/protobuf/Mixin;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/Mixin;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->getDefaultInstanceForType()Lcom/google/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->getDefaultInstanceForType()Lcom/google/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Mixin;
    .locals 1

    .line 829
    sget-object v0, Lcom/google/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/google/protobuf/Mixin;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;

    .line 163
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 166
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 168
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;

    .line 183
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Ljava/lang/String;

    .line 185
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 187
    iput-object v0, p0, Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;

    return-object v0

    .line 190
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
            "Lcom/google/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 825
    sget-object v0, Lcom/google/protobuf/Mixin;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;

    .line 206
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 207
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 209
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 211
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 212
    iput-object v0, p0, Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRootBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;

    .line 227
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 228
    check-cast v0, Ljava/lang/String;

    .line 229
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 231
    iput-object v0, p0, Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;

    return-object v0

    .line 234
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 260
    iget v0, p0, Lcom/google/protobuf/Mixin;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 265
    iget-object v2, p0, Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->getRootBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 268
    iget-object v2, p0, Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/Mixin;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 271
    iput v0, p0, Lcom/google/protobuf/Mixin;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/protobuf/Mixin;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 296
    iget v0, p0, Lcom/google/protobuf/Mixin;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 297
    iget v0, p0, Lcom/google/protobuf/Mixin;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 300
    invoke-static {}, Lcom/google/protobuf/Mixin;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 302
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 304
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 305
    iget-object v1, p0, Lcom/google/protobuf/Mixin;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    iput v0, p0, Lcom/google/protobuf/Mixin;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 147
    sget-object v0, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Mixin;

    const-class v2, Lcom/google/protobuf/Mixin$Builder;

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 240
    iget-byte v0, p0, Lcom/google/protobuf/Mixin;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 244
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/Mixin;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->newBuilderForType()Lcom/google/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Mixin;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->newBuilderForType()Lcom/google/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/Mixin$Builder;
    .locals 1

    .line 380
    invoke-static {}, Lcom/google/protobuf/Mixin;->newBuilder()Lcom/google/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Mixin$Builder;
    .locals 2

    .line 395
    new-instance v0, Lcom/google/protobuf/Mixin$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/Mixin$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Mixin$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->toBuilder()Lcom/google/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->toBuilder()Lcom/google/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/Mixin$Builder;
    .locals 2

    .line 388
    sget-object v0, Lcom/google/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/google/protobuf/Mixin;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Mixin$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Mixin$Builder;-><init>(Lcom/google/protobuf/Mixin$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/Mixin$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Mixin$Builder;-><init>(Lcom/google/protobuf/Mixin$1;)V

    .line 389
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Mixin$Builder;->mergeFrom(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Mixin$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 251
    iget-object v1, p0, Lcom/google/protobuf/Mixin;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Mixin;->getRootBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 254
    iget-object v1, p0, Lcom/google/protobuf/Mixin;->root_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Mixin;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
