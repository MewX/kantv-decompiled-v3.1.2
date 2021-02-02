.class public final Lcom/avos/avoscloud/Messages$ErrorCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    }
.end annotation


# static fields
.field public static final APPCODE_FIELD_NUMBER:I = 0x3

.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ErrorCommand;

.field public static final DETAIL_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PIDS_FIELD_NUMBER:I = 0x5

.field public static final REASON_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private appCode_:I

.field private bitField0_:I

.field private code_:I

.field private volatile detail_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private pids_:Lcom/google/protobuf/LazyStringList;

.field private volatile reason_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10901
    new-instance v0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 10909
    new-instance v0, Lcom/avos/avoscloud/Messages$ErrorCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 9918
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 10156
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 9919
    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->code_:I

    const-string v1, ""

    .line 9920
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->reason_:Ljava/lang/Object;

    .line 9921
    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->appCode_:I

    .line 9922
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->detail_:Ljava/lang/Object;

    .line 9923
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9935
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;-><init>()V

    .line 9938
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x10

    if-nez v1, :cond_9

    .line 9942
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    const/16 v6, 0x8

    if-eq v4, v6, :cond_6

    const/16 v7, 0x12

    if-eq v4, v7, :cond_5

    const/16 v7, 0x18

    if-eq v4, v7, :cond_4

    const/16 v7, 0x22

    if-eq v4, v7, :cond_3

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_1

    .line 9948
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/avos/avoscloud/Messages$ErrorCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 9977
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    and-int/lit8 v5, v2, 0x10

    if-eq v5, v3, :cond_2

    .line 9979
    new-instance v5, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x10

    .line 9982
    :cond_2
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 9971
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 9972
    iget v5, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    .line 9973
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->detail_:Ljava/lang/Object;

    goto :goto_0

    .line 9966
    :cond_4
    iget v4, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    .line 9967
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->appCode_:I

    goto :goto_0

    .line 9960
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 9961
    iget v5, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    .line 9962
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->reason_:Ljava/lang/Object;

    goto :goto_0

    .line 9955
    :cond_6
    iget v4, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    .line 9956
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->code_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 9990
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 9991
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 9988
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x10

    if-ne p2, v3, :cond_8

    .line 9994
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    .line 9996
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9997
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x10

    if-ne p1, v3, :cond_a

    .line 9994
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    .line 9996
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9997
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9909
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ErrorCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 9916
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 10156
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 9909
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10600()Z
    .locals 1

    .line 9909
    sget-boolean v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10802(Lcom/avos/avoscloud/Messages$ErrorCommand;I)I
    .locals 0

    .line 9909
    iput p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->code_:I

    return p1
.end method

.method static synthetic access$10900(Lcom/avos/avoscloud/Messages$ErrorCommand;)Ljava/lang/Object;
    .locals 0

    .line 9909
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->reason_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10902(Lcom/avos/avoscloud/Messages$ErrorCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9909
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->reason_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11002(Lcom/avos/avoscloud/Messages$ErrorCommand;I)I
    .locals 0

    .line 9909
    iput p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->appCode_:I

    return p1
.end method

.method static synthetic access$11100(Lcom/avos/avoscloud/Messages$ErrorCommand;)Ljava/lang/Object;
    .locals 0

    .line 9909
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->detail_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$11102(Lcom/avos/avoscloud/Messages$ErrorCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9909
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->detail_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11200(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 9909
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$11202(Lcom/avos/avoscloud/Messages$ErrorCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 9909
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$11302(Lcom/avos/avoscloud/Messages$ErrorCommand;I)I
    .locals 0

    .line 9909
    iput p1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$11400(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 9909
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1

    .line 10905
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10002
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$10200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10367
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ErrorCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10370
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ErrorCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10341
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 10342
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10348
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 10349
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10309
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10315
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10354
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 10355
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10361
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 10362
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10329
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 10330
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10336
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 10337
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10298
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10304
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10319
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10325
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;"
        }
    .end annotation

    .line 10919
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10231
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    if-nez v1, :cond_1

    .line 10232
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 10234
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    .line 10237
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasCode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasCode()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 10238
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasCode()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 10239
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getCode()I

    move-result v1

    .line 10240
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 10242
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasReason()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasReason()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 10243
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasReason()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 10244
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 10245
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getReason()Ljava/lang/String;

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

    .line 10247
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasAppCode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasAppCode()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 10248
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasAppCode()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 10249
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getAppCode()I

    move-result v1

    .line 10250
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getAppCode()I

    move-result v2

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 10252
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasDetail()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasDetail()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 10253
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasDetail()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 10254
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDetail()Ljava/lang/String;

    move-result-object v1

    .line 10255
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 10257
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 10258
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_f

    .line 10259
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$ErrorCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getAppCode()I
    .locals 1

    .line 10082
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->appCode_:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 10025
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->code_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1

    .line 10928
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 9909
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9909
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 2

    .line 10097
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->detail_:Ljava/lang/Object;

    .line 10098
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10099
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 10101
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10103
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10104
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10105
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->detail_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDetailBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10115
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->detail_:Ljava/lang/Object;

    .line 10116
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10117
    check-cast v0, Ljava/lang/String;

    .line 10118
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10120
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->detail_:Ljava/lang/Object;

    return-object v0

    .line 10123
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
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;"
        }
    .end annotation

    .line 10924
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPids(I)Ljava/lang/String;
    .locals 1

    .line 10146
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10153
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPidsCount()I
    .locals 1

    .line 10140
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 10134
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getPidsList()Ljava/util/List;
    .locals 1

    .line 9909
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 2

    .line 10040
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->reason_:Ljava/lang/Object;

    .line 10041
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10042
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 10044
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10046
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10047
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10048
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->reason_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10058
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->reason_:Ljava/lang/Object;

    .line 10059
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10060
    check-cast v0, Ljava/lang/String;

    .line 10061
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10063
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->reason_:Ljava/lang/Object;

    return-object v0

    .line 10066
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 10195
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 10199
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 10200
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->code_:I

    .line 10201
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10203
    :goto_0
    iget v3, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 10204
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->reason_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 10206
    :cond_2
    iget v3, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 10207
    iget v5, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->appCode_:I

    .line 10208
    invoke-static {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 10210
    :cond_3
    iget v3, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    .line 10211
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->detail_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    const/4 v3, 0x0

    .line 10215
    :goto_1
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 10216
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/Messages$ErrorCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v3

    .line 10219
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 10221
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 10222
    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 9929
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAppCode()Z
    .locals 2

    .line 10076
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

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

.method public hasCode()Z
    .locals 2

    .line 10019
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDetail()Z
    .locals 2

    .line 10091
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

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

.method public hasReason()Z
    .locals 2

    .line 10034
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

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

    .line 10265
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 10266
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 10269
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10270
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasCode()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 10272
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10274
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 10276
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10278
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasAppCode()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 10280
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getAppCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10282
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasDetail()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10284
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10286
    :cond_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getPidsCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 10288
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 10290
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10291
    iput v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 10007
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$10300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    .line 10008
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 10158
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 10162
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasCode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10163
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->memoizedIsInitialized:B

    return v2

    .line 10166
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->hasReason()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10167
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->memoizedIsInitialized:B

    return v2

    .line 10170
    :cond_3
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 10365
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->newBuilder()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 2

    .line 10380
    new-instance v0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9909
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9909
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ErrorCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9909
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 2

    .line 10373
    sget-object v0, Lcom/avos/avoscloud/Messages$ErrorCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ErrorCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 10374
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9909
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9909
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ErrorCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

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

    .line 10176
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 10177
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->code_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10179
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 10180
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->reason_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10182
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 10183
    iget v2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->appCode_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10185
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 10186
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->detail_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_3
    const/4 v0, 0x0

    .line 10188
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    .line 10189
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->pids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10191
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ErrorCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
