.class public final Lcom/avos/avoscloud/Messages$UnreadCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$UnreadCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnreadCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    }
.end annotation


# static fields
.field public static final CONVS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadCommand;

.field public static final NOTIFTIME_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$UnreadCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private convs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$UnreadTuple;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private notifTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16565
    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$UnreadCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadCommand;

    .line 16573
    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$UnreadCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 15790
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 15915
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->memoizedIsInitialized:B

    .line 15791
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 15792
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->notifTime_:J

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15804
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;-><init>()V

    .line 15807
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 15811
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    .line 15817
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/avos/avoscloud/Messages$UnreadCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 15833
    :cond_1
    iget v4, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->bitField0_:I

    .line 15834
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->notifTime_:J

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_3

    .line 15825
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 15828
    :cond_3
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    sget-object v5, Lcom/avos/avoscloud/Messages$UnreadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 15829
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    .line 15828
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

    .line 15842
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 15843
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 15840
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_5

    .line 15846
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    .line 15848
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 15849
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_6
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_7

    .line 15846
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    .line 15848
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 15849
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15781
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$UnreadCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 15788
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 15915
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 15781
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$16900()Z
    .locals 1

    .line 15781
    sget-boolean v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$17100(Lcom/avos/avoscloud/Messages$UnreadCommand;)Ljava/util/List;
    .locals 0

    .line 15781
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$17102(Lcom/avos/avoscloud/Messages$UnreadCommand;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 15781
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17202(Lcom/avos/avoscloud/Messages$UnreadCommand;J)J
    .locals 0

    .line 15781
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->notifTime_:J

    return-wide p1
.end method

.method static synthetic access$17302(Lcom/avos/avoscloud/Messages$UnreadCommand;I)I
    .locals 0

    .line 15781
    iput p1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$17400()Z
    .locals 1

    .line 15781
    sget-boolean v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$17500(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 15781
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1

    .line 16569
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 15854
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$16500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16075
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->toBuilder()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16078
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->toBuilder()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16049
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 16050
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16056
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 16057
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16017
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16023
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16062
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 16063
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16069
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 16070
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16037
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 16038
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16044
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 16045
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16006
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16012
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16027
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16033
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$UnreadCommand;",
            ">;"
        }
    .end annotation

    .line 16583
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15965
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$UnreadCommand;

    if-nez v1, :cond_1

    .line 15966
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15968
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadCommand;

    .line 15971
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getConvsList()Ljava/util/List;

    move-result-object v1

    .line 15972
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getConvsList()Ljava/util/List;

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

    .line 15973
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->hasNotifTime()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->hasNotifTime()Z

    move-result v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 15974
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->hasNotifTime()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    .line 15975
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getNotifTime()J

    move-result-wide v3

    .line 15976
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getNotifTime()J

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

    .line 15978
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$UnreadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public getConvs(I)Lcom/avos/avoscloud/Messages$UnreadTuple;
    .locals 1

    .line 15890
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTuple;

    return-object p1
.end method

.method public getConvsCount()I
    .locals 1

    .line 15884
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConvsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$UnreadTuple;",
            ">;"
        }
    .end annotation

    .line 15871
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    return-object v0
.end method

.method public getConvsOrBuilder(I)Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;
    .locals 1

    .line 15897
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;

    return-object p1
.end method

.method public getConvsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15878
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadCommand;
    .locals 1

    .line 16592
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 15781
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 15781
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$UnreadCommand;

    move-result-object v0

    return-object v0
.end method

.method public getNotifTime()J
    .locals 2

    .line 15912
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->notifTime_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$UnreadCommand;",
            ">;"
        }
    .end annotation

    .line 16588
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 15943
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15947
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 15948
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    .line 15949
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15951
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x2

    .line 15952
    iget-wide v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->notifTime_:J

    .line 15953
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 15955
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 15956
    iput v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 15798
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasNotifTime()Z
    .locals 2

    .line 15906
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->bitField0_:I

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

    .line 15984
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 15985
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 15988
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15989
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getConvsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 15991
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getConvsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15993
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->hasNotifTime()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 15996
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getNotifTime()J

    move-result-wide v1

    .line 15995
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 15998
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15999
    iput v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 15859
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$16600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$UnreadCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    .line 15860
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 15917
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 15921
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getConvsCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 15922
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->getConvs(I)Lcom/avos/avoscloud/Messages$UnreadTuple;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/Messages$UnreadTuple;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 15923
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15927
    :cond_3
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 1

    .line 16073
    invoke-static {}, Lcom/avos/avoscloud/Messages$UnreadCommand;->newBuilder()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 2

    .line 16088
    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 15781
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 15781
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$UnreadCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 15781
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;
    .locals 2

    .line 16081
    sget-object v0, Lcom/avos/avoscloud/Messages$UnreadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$UnreadCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 16082
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$UnreadCommand;)Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 15781
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->toBuilder()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 15781
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$UnreadCommand;->toBuilder()Lcom/avos/avoscloud/Messages$UnreadCommand$Builder;

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

    .line 15933
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 15934
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->convs_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15936
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    .line 15937
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->notifTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 15939
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$UnreadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
