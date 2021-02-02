.class public final Lcom/avos/avoscloud/Messages$ReportCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ReportCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReportCommand;

.field public static final INITIATIVE_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ReportCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile data_:Ljava/lang/Object;

.field private initiative_:Z

.field private memoizedIsInitialized:B

.field private volatile type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31391
    new-instance v0, Lcom/avos/avoscloud/Messages$ReportCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ReportCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReportCommand;

    .line 31399
    new-instance v0, Lcom/avos/avoscloud/Messages$ReportCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ReportCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30668
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 30843
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 30669
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->initiative_:Z

    const-string v0, ""

    .line 30670
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->type_:Ljava/lang/Object;

    .line 30671
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->data_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30683
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;-><init>()V

    .line 30686
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 30690
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 30696
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/avos/avoscloud/Messages$ReportCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 30714
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 30715
    iget v3, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    .line 30716
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->data_:Ljava/lang/Object;

    goto :goto_0

    .line 30708
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 30709
    iget v3, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    .line 30710
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 30703
    :cond_3
    iget v2, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    .line 30704
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->initiative_:Z
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

    .line 30724
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 30725
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 30722
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30727
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 30728
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->makeExtensionsImmutable()V

    throw p1

    .line 30727
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 30728
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30659
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReportCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 30666
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 30843
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 30659
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$33000()Z
    .locals 1

    .line 30659
    sget-boolean v0, Lcom/avos/avoscloud/Messages$ReportCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$33202(Lcom/avos/avoscloud/Messages$ReportCommand;Z)Z
    .locals 0

    .line 30659
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->initiative_:Z

    return p1
.end method

.method static synthetic access$33300(Lcom/avos/avoscloud/Messages$ReportCommand;)Ljava/lang/Object;
    .locals 0

    .line 30659
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->type_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$33302(Lcom/avos/avoscloud/Messages$ReportCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30659
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33400(Lcom/avos/avoscloud/Messages$ReportCommand;)Ljava/lang/Object;
    .locals 0

    .line 30659
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->data_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$33402(Lcom/avos/avoscloud/Messages$ReportCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30659
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->data_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33502(Lcom/avos/avoscloud/Messages$ReportCommand;I)I
    .locals 0

    .line 30659
    iput p1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$33600(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 30659
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1

    .line 31395
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 30733
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$32600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    .line 31014
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReportCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReportCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    .line 31017
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReportCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReportCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30988
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 30989
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30995
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 30996
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30956
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30962
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31001
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 31002
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31008
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 31009
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30976
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 30977
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30983
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 30984
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30945
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30951
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30966
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30972
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ReportCommand;",
            ">;"
        }
    .end annotation

    .line 31409
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 30892
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$ReportCommand;

    if-nez v1, :cond_1

    .line 30893
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 30895
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$ReportCommand;

    .line 30898
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasInitiative()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasInitiative()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 30899
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasInitiative()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 30900
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->getInitiative()Z

    move-result v1

    .line 30901
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->getInitiative()Z

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 30903
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasType()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 30904
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasType()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 30905
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->getType()Ljava/lang/String;

    move-result-object v1

    .line 30906
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->getType()Ljava/lang/String;

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

    .line 30908
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasData()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 30909
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasData()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 30910
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->getData()Ljava/lang/String;

    move-result-object v1

    .line 30911
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->getData()Ljava/lang/String;

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

    .line 30913
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$ReportCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 30813
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->data_:Ljava/lang/Object;

    .line 30814
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30815
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 30817
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30819
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30820
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30821
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->data_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 30831
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->data_:Ljava/lang/Object;

    .line 30832
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30833
    check-cast v0, Ljava/lang/String;

    .line 30834
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30836
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->data_:Ljava/lang/Object;

    return-object v0

    .line 30839
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReportCommand;
    .locals 1

    .line 31418
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReportCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 30659
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 30659
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReportCommand;

    move-result-object v0

    return-object v0
.end method

.method public getInitiative()Z
    .locals 1

    .line 30756
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->initiative_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ReportCommand;",
            ">;"
        }
    .end annotation

    .line 31414
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 30868
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 30872
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 30873
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->initiative_:Z

    .line 30874
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 30876
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 30877
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->type_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30879
    :cond_2
    iget v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 30880
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->data_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30882
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 30883
    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->memoizedSize:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 30771
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->type_:Ljava/lang/Object;

    .line 30772
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30773
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 30775
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30777
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30778
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30779
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->type_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 30789
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->type_:Ljava/lang/Object;

    .line 30790
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30791
    check-cast v0, Ljava/lang/String;

    .line 30792
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30794
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->type_:Ljava/lang/Object;

    return-object v0

    .line 30797
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 30677
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .line 30807
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

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

.method public hasInitiative()Z
    .locals 2

    .line 30750
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasType()Z
    .locals 2

    .line 30765
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

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

    .line 30919
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 30920
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 30923
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 30924
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasInitiative()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 30927
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->getInitiative()Z

    move-result v1

    .line 30926
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 30929
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasType()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 30931
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 30933
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->hasData()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 30935
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 30937
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 30938
    iput v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 30738
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$32700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ReportCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    .line 30739
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 30845
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 30849
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 1

    .line 31012
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReportCommand;->newBuilder()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 2

    .line 31027
    new-instance v0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 30659
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 30659
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReportCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 30659
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;
    .locals 2

    .line 31020
    sget-object v0, Lcom/avos/avoscloud/Messages$ReportCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReportCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 31021
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ReportCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReportCommand;)Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 30659
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 30659
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReportCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ReportCommand$Builder;

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

    .line 30855
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 30856
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->initiative_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 30858
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 30859
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->type_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 30861
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 30862
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->data_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 30864
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReportCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
