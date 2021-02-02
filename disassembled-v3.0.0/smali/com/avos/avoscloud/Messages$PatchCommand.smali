.class public final Lcom/avos/avoscloud/Messages$PatchCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$PatchCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatchCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchCommand;

.field public static final LASTPATCHTIME_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$PatchCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATCHES_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private lastPatchTime_:J

.field private memoizedIsInitialized:B

.field private patches_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$PatchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33916
    new-instance v0, Lcom/avos/avoscloud/Messages$PatchCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$PatchCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchCommand;

    .line 33924
    new-instance v0, Lcom/avos/avoscloud/Messages$PatchCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$PatchCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 33152
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 33277
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->memoizedIsInitialized:B

    .line 33153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 33154
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->lastPatchTime_:J

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33166
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;-><init>()V

    .line 33169
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 33173
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    .line 33179
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/avos/avoscloud/Messages$PatchCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 33195
    :cond_1
    iget v4, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->bitField0_:I

    .line 33196
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->lastPatchTime_:J

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_3

    .line 33187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 33190
    :cond_3
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    sget-object v5, Lcom/avos/avoscloud/Messages$PatchItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 33191
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    .line 33190
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    .line 33204
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 33205
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 33202
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_5

    .line 33208
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    .line 33210
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 33211
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_6
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_7

    .line 33208
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    .line 33210
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 33211
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33143
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PatchCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 33150
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 33277
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 33143
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$36100()Z
    .locals 1

    .line 33143
    sget-boolean v0, Lcom/avos/avoscloud/Messages$PatchCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$36300(Lcom/avos/avoscloud/Messages$PatchCommand;)Ljava/util/List;
    .locals 0

    .line 33143
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$36302(Lcom/avos/avoscloud/Messages$PatchCommand;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 33143
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$36402(Lcom/avos/avoscloud/Messages$PatchCommand;J)J
    .locals 0

    .line 33143
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->lastPatchTime_:J

    return-wide p1
.end method

.method static synthetic access$36502(Lcom/avos/avoscloud/Messages$PatchCommand;I)I
    .locals 0

    .line 33143
    iput p1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$36600()Z
    .locals 1

    .line 33143
    sget-boolean v0, Lcom/avos/avoscloud/Messages$PatchCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$36700(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 33143
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1

    .line 33920
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 33216
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$35700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33431
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33434
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PatchCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33405
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 33406
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33412
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 33413
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33373
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33379
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33418
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 33419
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33425
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 33426
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33393
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 33394
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33400
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 33401
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33362
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33368
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33383
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33389
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$PatchCommand;",
            ">;"
        }
    .end annotation

    .line 33934
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 33321
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$PatchCommand;

    if-nez v1, :cond_1

    .line 33322
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 33324
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$PatchCommand;

    .line 33327
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->getPatchesList()Ljava/util/List;

    move-result-object v1

    .line 33328
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->getPatchesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 33329
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->hasLastPatchTime()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->hasLastPatchTime()Z

    move-result v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 33330
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->hasLastPatchTime()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    .line 33331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->getLastPatchTime()J

    move-result-wide v3

    .line 33332
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->getLastPatchTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 33334
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$PatchCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchCommand;
    .locals 1

    .line 33943
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 33143
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 33143
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PatchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getLastPatchTime()J
    .locals 2

    .line 33274
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->lastPatchTime_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$PatchCommand;",
            ">;"
        }
    .end annotation

    .line 33939
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPatches(I)Lcom/avos/avoscloud/Messages$PatchItem;
    .locals 1

    .line 33252
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItem;

    return-object p1
.end method

.method public getPatchesCount()I
    .locals 1

    .line 33246
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPatchesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$PatchItem;",
            ">;"
        }
    .end annotation

    .line 33233
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    return-object v0
.end method

.method public getPatchesOrBuilder(I)Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;
    .locals 1

    .line 33259
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;

    return-object p1
.end method

.method public getPatchesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 33240
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 33299
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33303
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 33304
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    .line 33305
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33307
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x2

    .line 33308
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->lastPatchTime_:J

    .line 33309
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 33311
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 33312
    iput v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 33160
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasLastPatchTime()Z
    .locals 2

    .line 33268
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->bitField0_:I

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

    .line 33340
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 33341
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 33344
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 33345
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->getPatchesCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 33347
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->getPatchesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 33349
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->hasLastPatchTime()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 33352
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->getLastPatchTime()J

    move-result-wide v1

    .line 33351
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 33354
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 33355
    iput v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 33221
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$35800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$PatchCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    .line 33222
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 33279
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 33283
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 1

    .line 33429
    invoke-static {}, Lcom/avos/avoscloud/Messages$PatchCommand;->newBuilder()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 2

    .line 33444
    new-instance v0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 33143
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 33143
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PatchCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 33143
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;
    .locals 2

    .line 33437
    sget-object v0, Lcom/avos/avoscloud/Messages$PatchCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PatchCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 33438
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$PatchCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PatchCommand;)Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 33143
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 33143
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PatchCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PatchCommand$Builder;

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

    .line 33289
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 33290
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->patches_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33292
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    .line 33293
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->lastPatchTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 33295
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PatchCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
