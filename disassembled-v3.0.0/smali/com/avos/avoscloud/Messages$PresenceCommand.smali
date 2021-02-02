.class public final Lcom/avos/avoscloud/Messages$PresenceCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$PresenceCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PresenceCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    }
.end annotation


# static fields
.field public static final CID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PresenceCommand;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$PresenceCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SESSIONPEERIDS_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile cid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30583
    new-instance v0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$PresenceCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PresenceCommand;

    .line 30591
    new-instance v0, Lcom/avos/avoscloud/Messages$PresenceCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$PresenceCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29833
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 30008
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->memoizedIsInitialized:B

    const/4 v0, 0x1

    .line 29834
    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->status_:I

    .line 29835
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    const-string v0, ""

    .line 29836
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->cid_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29848
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;-><init>()V

    .line 29851
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-nez v1, :cond_8

    .line 29855
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    const/16 v6, 0x8

    if-eq v4, v6, :cond_4

    const/16 v6, 0x12

    if-eq v4, v6, :cond_2

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_1

    .line 29861
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/avos/avoscloud/Messages$PresenceCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 29888
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 29889
    iget v5, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->bitField0_:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->bitField0_:I

    .line 29890
    iput-object v4, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->cid_:Ljava/lang/Object;

    goto :goto_0

    .line 29879
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    and-int/lit8 v5, v2, 0x2

    if-eq v5, v3, :cond_3

    .line 29881
    new-instance v5, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x2

    .line 29884
    :cond_3
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 29868
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 29869
    invoke-static {v4}, Lcom/avos/avoscloud/Messages$StatusType;->valueOf(I)Lcom/avos/avoscloud/Messages$StatusType;

    move-result-object v6

    if-nez v6, :cond_5

    .line 29871
    invoke-virtual {v0, v5, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 29873
    :cond_5
    iget v6, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->bitField0_:I

    .line 29874
    iput v4, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->status_:I
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

    .line 29898
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 29899
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 29896
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v3, :cond_7

    .line 29902
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 29904
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 29905
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_8
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v3, :cond_9

    .line 29902
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 29904
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 29905
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 29824
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$PresenceCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 29831
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 30008
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 29824
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$31800()Z
    .locals 1

    .line 29824
    sget-boolean v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$32002(Lcom/avos/avoscloud/Messages$PresenceCommand;I)I
    .locals 0

    .line 29824
    iput p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->status_:I

    return p1
.end method

.method static synthetic access$32100(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 29824
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$32102(Lcom/avos/avoscloud/Messages$PresenceCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 29824
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$32200(Lcom/avos/avoscloud/Messages$PresenceCommand;)Ljava/lang/Object;
    .locals 0

    .line 29824
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32202(Lcom/avos/avoscloud/Messages$PresenceCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29824
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32302(Lcom/avos/avoscloud/Messages$PresenceCommand;I)I
    .locals 0

    .line 29824
    iput p1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$32400(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 29824
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1

    .line 30587
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 29910
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$31400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    .line 30179
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PresenceCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    .line 30182
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PresenceCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30153
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 30154
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30160
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 30161
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30121
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30127
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30166
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 30167
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30173
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 30174
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30141
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 30142
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30148
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 30149
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30110
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30116
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30131
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 30137
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$PresenceCommand;",
            ">;"
        }
    .end annotation

    .line 30601
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 30062
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$PresenceCommand;

    if-nez v1, :cond_1

    .line 30063
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 30065
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$PresenceCommand;

    .line 30068
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->hasStatus()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->hasStatus()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 30069
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 30070
    iget v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->status_:I

    iget v2, p1, Lcom/avos/avoscloud/Messages$PresenceCommand;->status_:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 30072
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 30073
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

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

    .line 30074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->hasCid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->hasCid()Z

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 30075
    :goto_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->hasCid()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    .line 30076
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 30077
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 30079
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$PresenceCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 29978
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->cid_:Ljava/lang/Object;

    .line 29979
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29980
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 29982
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 29984
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 29985
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29986
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->cid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 29996
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->cid_:Ljava/lang/Object;

    .line 29997
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29998
    check-cast v0, Ljava/lang/String;

    .line 29999
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30001
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->cid_:Ljava/lang/Object;

    return-object v0

    .line 30004
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PresenceCommand;
    .locals 1

    .line 30610
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PresenceCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 29824
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 29824
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$PresenceCommand;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$PresenceCommand;",
            ">;"
        }
    .end annotation

    .line 30606
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 30033
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 30037
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 30038
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->status_:I

    .line 30039
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 30043
    :goto_1
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 30044
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/Messages$PresenceCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    .line 30047
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 30049
    iget v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 30050
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->cid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30052
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 30053
    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->memoizedSize:I

    return v0
.end method

.method public getSessionPeerIds(I)Ljava/lang/String;
    .locals 1

    .line 29956
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSessionPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 29963
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSessionPeerIdsCount()I
    .locals 1

    .line 29950
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 29944
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getSessionPeerIdsList()Ljava/util/List;
    .locals 1

    .line 29824
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/avos/avoscloud/Messages$StatusType;
    .locals 1

    .line 29933
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->status_:I

    invoke-static {v0}, Lcom/avos/avoscloud/Messages$StatusType;->valueOf(I)Lcom/avos/avoscloud/Messages$StatusType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29934
    sget-object v0, Lcom/avos/avoscloud/Messages$StatusType;->on:Lcom/avos/avoscloud/Messages$StatusType;

    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 29842
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCid()Z
    .locals 2

    .line 29972
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .line 29927
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->bitField0_:I

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

    .line 30085
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 30086
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 30089
    invoke-static {}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 30090
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 30092
    iget v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->status_:I

    add-int/2addr v0, v1

    .line 30094
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getSessionPeerIdsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 30096
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 30098
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->hasCid()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 30100
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 30102
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 30103
    iput v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 29915
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$31500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$PresenceCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    .line 29916
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 30010
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 30014
    :cond_1
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 1

    .line 30177
    invoke-static {}, Lcom/avos/avoscloud/Messages$PresenceCommand;->newBuilder()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 2

    .line 30192
    new-instance v0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 29824
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 29824
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$PresenceCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 29824
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;
    .locals 2

    .line 30185
    sget-object v0, Lcom/avos/avoscloud/Messages$PresenceCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$PresenceCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 30186
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$PresenceCommand;)Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 29824
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 29824
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$PresenceCommand;->toBuilder()Lcom/avos/avoscloud/Messages$PresenceCommand$Builder;

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

    .line 30020
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 30021
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->status_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_0
    const/4 v0, 0x0

    .line 30023
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    .line 30024
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30026
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    .line 30027
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->cid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 30029
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$PresenceCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
