.class public final Lcom/avos/avoscloud/Messages$ReadCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ReadCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReadCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    }
.end annotation


# static fields
.field public static final CIDS_FIELD_NUMBER:I = 0x2

.field public static final CID_FIELD_NUMBER:I = 0x1

.field public static final CONVS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadCommand;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ReadCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile cid_:Ljava/lang/Object;

.field private cids_:Lcom/google/protobuf/LazyStringList;

.field private convs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ReadTuple;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29743
    new-instance v0, Lcom/avos/avoscloud/Messages$ReadCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ReadCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadCommand;

    .line 29751
    new-instance v0, Lcom/avos/avoscloud/Messages$ReadCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$ReadCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28727
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 28922
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->memoizedIsInitialized:B

    const-string v0, ""

    .line 28728
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cid_:Ljava/lang/Object;

    .line 28729
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 28730
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28742
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;-><init>()V

    .line 28745
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x2

    if-nez v1, :cond_9

    .line 28749
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    const/16 v7, 0xa

    if-eq v5, v7, :cond_5

    const/16 v7, 0x12

    if-eq v5, v7, :cond_3

    const/16 v7, 0x1a

    if-eq v5, v7, :cond_1

    .line 28755
    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/avos/avoscloud/Messages$ReadCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v5, v2, 0x4

    if-eq v5, v3, :cond_2

    .line 28778
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 28781
    :cond_2
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    sget-object v6, Lcom/avos/avoscloud/Messages$ReadTuple;->PARSER:Lcom/google/protobuf/Parser;

    .line 28782
    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    .line 28781
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28768
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    and-int/lit8 v6, v2, 0x2

    if-eq v6, v4, :cond_4

    .line 28770
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x2

    .line 28773
    :cond_4
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 28762
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 28763
    iget v7, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->bitField0_:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->bitField0_:I

    .line 28764
    iput-object v5, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cid_:Ljava/lang/Object;
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

    .line 28790
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 28791
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 28788
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v4, :cond_7

    .line 28794
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    :cond_7
    and-int/lit8 p2, v2, 0x4

    if-ne p2, v3, :cond_8

    .line 28797
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    .line 28799
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 28800
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v4, :cond_a

    .line 28794
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    :cond_a
    and-int/lit8 p1, v2, 0x4

    if-ne p1, v3, :cond_b

    .line 28797
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    .line 28799
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 28800
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28718
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ReadCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 28725
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 28922
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 28718
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$30500()Z
    .locals 1

    .line 28718
    sget-boolean v0, Lcom/avos/avoscloud/Messages$ReadCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$30700(Lcom/avos/avoscloud/Messages$ReadCommand;)Ljava/lang/Object;
    .locals 0

    .line 28718
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$30702(Lcom/avos/avoscloud/Messages$ReadCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28718
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30800(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 28718
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$30802(Lcom/avos/avoscloud/Messages$ReadCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 28718
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$30900(Lcom/avos/avoscloud/Messages$ReadCommand;)Ljava/util/List;
    .locals 0

    .line 28718
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$30902(Lcom/avos/avoscloud/Messages$ReadCommand;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28718
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$31002(Lcom/avos/avoscloud/Messages$ReadCommand;I)I
    .locals 0

    .line 28718
    iput p1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$31100()Z
    .locals 1

    .line 28718
    sget-boolean v0, Lcom/avos/avoscloud/Messages$ReadCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$31200(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 28718
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1

    .line 29747
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 28805
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$30100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29097
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29100
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ReadCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29071
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 29072
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29078
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 29079
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29039
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29045
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29084
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 29085
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29091
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 29092
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29059
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 29060
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29066
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 29067
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29028
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29034
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29049
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29055
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ReadCommand;",
            ">;"
        }
    .end annotation

    .line 29761
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28982
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$ReadCommand;

    if-nez v1, :cond_1

    .line 28983
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 28985
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$ReadCommand;

    .line 28988
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->hasCid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 28989
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 28990
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 28991
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->getCid()Ljava/lang/String;

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

    .line 28993
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 28994
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 28995
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getConvsList()Ljava/util/List;

    move-result-object v1

    .line 28996
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->getConvsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 28997
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$ReadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 28828
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cid_:Ljava/lang/Object;

    .line 28829
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28830
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28832
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28834
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28835
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28836
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 28846
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cid_:Ljava/lang/Object;

    .line 28847
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28848
    check-cast v0, Ljava/lang/String;

    .line 28849
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28851
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cid_:Ljava/lang/Object;

    return-object v0

    .line 28854
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCids(I)Ljava/lang/String;
    .locals 1

    .line 28877
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 28884
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCidsCount()I
    .locals 1

    .line 28871
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 28865
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getCidsList()Ljava/util/List;
    .locals 1

    .line 28718
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getConvs(I)Lcom/avos/avoscloud/Messages$ReadTuple;
    .locals 1

    .line 28912
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTuple;

    return-object p1
.end method

.method public getConvsCount()I
    .locals 1

    .line 28906
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

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
            "Lcom/avos/avoscloud/Messages$ReadTuple;",
            ">;"
        }
    .end annotation

    .line 28893
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    return-object v0
.end method

.method public getConvsOrBuilder(I)Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;
    .locals 1

    .line 28919
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;

    return-object p1
.end method

.method public getConvsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 28900
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadCommand;
    .locals 1

    .line 29770
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 28718
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 28718
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ReadCommand;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$ReadCommand;",
            ">;"
        }
    .end annotation

    .line 29766
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 28953
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 28957
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 28958
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 28962
    :goto_1
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 28963
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/Messages$ReadCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 28966
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 28968
    :goto_2
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    const/4 v1, 0x3

    .line 28969
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    .line 28970
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 28972
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 28973
    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 28736
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCid()Z
    .locals 2

    .line 28822
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->bitField0_:I

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
    .locals 2

    .line 29003
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 29004
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 29007
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29008
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 29010
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29012
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getCidsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 29014
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29016
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getConvsCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 29018
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getConvsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 29020
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29021
    iput v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 28810
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$30200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ReadCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    .line 28811
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 28924
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 28928
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getConvsCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 28929
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ReadCommand;->getConvs(I)Lcom/avos/avoscloud/Messages$ReadTuple;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/Messages$ReadTuple;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 28930
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28934
    :cond_3
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 1

    .line 29095
    invoke-static {}, Lcom/avos/avoscloud/Messages$ReadCommand;->newBuilder()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 2

    .line 29110
    new-instance v0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 28718
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 28718
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ReadCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 28718
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;
    .locals 2

    .line 29103
    sget-object v0, Lcom/avos/avoscloud/Messages$ReadCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$ReadCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 29104
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$ReadCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ReadCommand;)Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 28718
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 28718
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ReadCommand;->toBuilder()Lcom/avos/avoscloud/Messages$ReadCommand$Builder;

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

    .line 28940
    iget v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 28941
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28943
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 28944
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28946
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 28947
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->convs_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28949
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ReadCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
