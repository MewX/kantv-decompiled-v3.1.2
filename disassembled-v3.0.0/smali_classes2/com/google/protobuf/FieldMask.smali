.class public final Lcom/google/protobuf/FieldMask;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "FieldMask.java"

# interfaces
.implements Lcom/google/protobuf/FieldMaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldMask$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/FieldMask;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/FieldMask;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATHS_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private paths_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 891
    new-instance v0, Lcom/google/protobuf/FieldMask;

    invoke-direct {v0}, Lcom/google/protobuf/FieldMask;-><init>()V

    sput-object v0, Lcom/google/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldMask;

    .line 899
    new-instance v0, Lcom/google/protobuf/FieldMask$1;

    invoke-direct {v0}, Lcom/google/protobuf/FieldMask$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 287
    iput-byte v0, p0, Lcom/google/protobuf/FieldMask;->memoizedIsInitialized:B

    .line 175
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Lcom/google/protobuf/FieldMask;-><init>()V

    .line 190
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 194
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 200
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/FieldMask;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v2, 0x1

    if-eq v5, v3, :cond_2

    .line 209
    new-instance v5, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 212
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z
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

    .line 220
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 221
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 218
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_4

    .line 224
    iget-object p2, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    .line 226
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/FieldMask;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 227
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->makeExtensionsImmutable()V

    throw p1

    :cond_5
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_6

    .line 224
    iget-object p1, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    .line 226
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/FieldMask;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 227
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldMask$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/FieldMask;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 172
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 287
    iput-byte p1, p0, Lcom/google/protobuf/FieldMask;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/FieldMask$1;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/google/protobuf/FieldMask;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/protobuf/FieldMask;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$400()Lcom/google/protobuf/Parser;
    .locals 1

    .line 165
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/FieldMask;
    .locals 1

    .line 895
    sget-object v0, Lcom/google/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldMask;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 232
    sget-object v0, Lcom/google/protobuf/FieldMaskProto;->internal_static_google_protobuf_FieldMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/FieldMask$Builder;
    .locals 1

    .line 428
    sget-object v0, Lcom/google/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldMask;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldMask;->toBuilder()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 1

    .line 431
    sget-object v0, Lcom/google/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldMask;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldMask;->toBuilder()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/FieldMask$Builder;->mergeFrom(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    .line 403
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    .line 410
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    .line 416
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    .line 423
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    .line 391
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    .line 398
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 359
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FieldMask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 386
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldMask;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/FieldMask;",
            ">;"
        }
    .end annotation

    .line 909
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 328
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/FieldMask;

    if-nez v1, :cond_1

    .line 329
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 331
    :cond_1
    check-cast p1, Lcom/google/protobuf/FieldMask;

    .line 334
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->getPathsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 335
    invoke-virtual {p1}, Lcom/google/protobuf/FieldMask;->getPathsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 336
    iget-object v1, p0, Lcom/google/protobuf/FieldMask;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/FieldMask;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/FieldMask;
    .locals 1

    .line 918
    sget-object v0, Lcom/google/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldMask;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->getDefaultInstanceForType()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->getDefaultInstanceForType()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/FieldMask;",
            ">;"
        }
    .end annotation

    .line 914
    sget-object v0, Lcom/google/protobuf/FieldMask;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPaths(I)Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPathsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPathsCount()I
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPathsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getPathsList()Ljava/util/List;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->getPathsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 306
    iget v0, p0, Lcom/google/protobuf/FieldMask;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 312
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/FieldMask;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 316
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->getPathsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 318
    iget-object v1, p0, Lcom/google/protobuf/FieldMask;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    iput v0, p0, Lcom/google/protobuf/FieldMask;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/protobuf/FieldMask;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 342
    iget v0, p0, Lcom/google/protobuf/FieldMask;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 343
    iget v0, p0, Lcom/google/protobuf/FieldMask;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 346
    invoke-static {}, Lcom/google/protobuf/FieldMask;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->getPathsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 349
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->getPathsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 351
    iget-object v1, p0, Lcom/google/protobuf/FieldMask;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    iput v0, p0, Lcom/google/protobuf/FieldMask;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 237
    sget-object v0, Lcom/google/protobuf/FieldMaskProto;->internal_static_google_protobuf_FieldMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/FieldMask;

    const-class v2, Lcom/google/protobuf/FieldMask$Builder;

    .line 238
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 289
    iget-byte v0, p0, Lcom/google/protobuf/FieldMask;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 293
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/FieldMask;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/FieldMask$Builder;
    .locals 1

    .line 426
    invoke-static {}, Lcom/google/protobuf/FieldMask;->newBuilder()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 2

    .line 441
    new-instance v0, Lcom/google/protobuf/FieldMask$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/FieldMask$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/FieldMask$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->newBuilderForType()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->newBuilderForType()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/FieldMask$Builder;
    .locals 2

    .line 434
    sget-object v0, Lcom/google/protobuf/FieldMask;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldMask;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/FieldMask$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/FieldMask$Builder;-><init>(Lcom/google/protobuf/FieldMask$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/FieldMask$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/FieldMask$Builder;-><init>(Lcom/google/protobuf/FieldMask$1;)V

    .line 435
    invoke-virtual {v0, p0}, Lcom/google/protobuf/FieldMask$Builder;->mergeFrom(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->toBuilder()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask;->toBuilder()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/google/protobuf/FieldMask;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldMask;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
