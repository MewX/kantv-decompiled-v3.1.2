.class public final Lcom/avos/avoscloud/Messages$DataCommand;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$DataCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DataCommand;

.field public static final IDS_FIELD_NUMBER:I = 0x1

.field public static final MSG_FIELD_NUMBER:I = 0x2

.field public static final OFFLINE_FIELD_NUMBER:I = 0x3

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$DataCommand;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ids_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private msg_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            ">;"
        }
    .end annotation
.end field

.field private offline_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6852
    new-instance v0, Lcom/avos/avoscloud/Messages$DataCommand;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$DataCommand;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DataCommand;

    .line 6860
    new-instance v0, Lcom/avos/avoscloud/Messages$DataCommand$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$DataCommand$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5908
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6075
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->memoizedIsInitialized:B

    .line 5909
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    .line 5910
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    const/4 v0, 0x0

    .line 5911
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->offline_:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5923
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$DataCommand;-><init>()V

    .line 5926
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_9

    .line 5930
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v6, 0xa

    if-eq v5, v6, :cond_4

    const/16 v6, 0x12

    if-eq v5, v6, :cond_2

    const/16 v6, 0x18

    if-eq v5, v6, :cond_1

    .line 5936
    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/avos/avoscloud/Messages$DataCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 5961
    :cond_1
    iget v5, p0, Lcom/avos/avoscloud/Messages$DataCommand;->bitField0_:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/avos/avoscloud/Messages$DataCommand;->bitField0_:I

    .line 5962
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/avos/avoscloud/Messages$DataCommand;->offline_:Z

    goto :goto_0

    :cond_2
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v3, :cond_3

    .line 5953
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 5956
    :cond_3
    iget-object v5, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    sget-object v6, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 5957
    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    .line 5956
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5943
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    and-int/lit8 v6, v2, 0x1

    if-eq v6, v4, :cond_5

    .line 5945
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 5948
    :cond_5
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
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

    .line 5970
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 5971
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5968
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v4, :cond_7

    .line 5974
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    :cond_7
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v3, :cond_8

    .line 5977
    iget-object p2, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    .line 5979
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$DataCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5980
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v4, :cond_a

    .line 5974
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    :cond_a
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v3, :cond_b

    .line 5977
    iget-object p1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    .line 5979
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5980
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5899
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$DataCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5906
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 6075
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 5899
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$6500()Z
    .locals 1

    .line 5899
    sget-boolean v0, Lcom/avos/avoscloud/Messages$DataCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 5899
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$6702(Lcom/avos/avoscloud/Messages$DataCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 5899
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/avos/avoscloud/Messages$DataCommand;)Ljava/util/List;
    .locals 0

    .line 5899
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6802(Lcom/avos/avoscloud/Messages$DataCommand;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 5899
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/avos/avoscloud/Messages$DataCommand;Z)Z
    .locals 0

    .line 5899
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->offline_:Z

    return p1
.end method

.method static synthetic access$7002(Lcom/avos/avoscloud/Messages$DataCommand;I)I
    .locals 0

    .line 5899
    iput p1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$7100()Z
    .locals 1

    .line 5899
    sget-boolean v0, Lcom/avos/avoscloud/Messages$DataCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 5899
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1

    .line 6856
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DataCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5985
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$6100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6252
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DataCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DataCommand;->toBuilder()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6255
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DataCommand;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$DataCommand;->toBuilder()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6226
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 6227
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6233
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 6234
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6194
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6200
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6239
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 6240
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6246
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 6247
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6214
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 6215
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6221
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    .line 6222
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6183
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6189
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6204
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6210
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$DataCommand;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$DataCommand;",
            ">;"
        }
    .end annotation

    .line 6870
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 6136
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$DataCommand;

    if-nez v1, :cond_1

    .line 6137
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6139
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$DataCommand;

    .line 6142
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 6143
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

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

    .line 6144
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getMsgList()Ljava/util/List;

    move-result-object v1

    .line 6145
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->getMsgList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 6146
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->hasOffline()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->hasOffline()Z

    move-result v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 6147
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->hasOffline()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    .line 6148
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getOffline()Z

    move-result v1

    .line 6149
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$DataCommand;->getOffline()Z

    move-result v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 6151
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$DataCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DataCommand;
    .locals 1

    .line 6879
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DataCommand;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5899
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5899
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$DataCommand;

    move-result-object v0

    return-object v0
.end method

.method public getIds(I)Ljava/lang/String;
    .locals 1

    .line 6015
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6022
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getIdsCount()I
    .locals 1

    .line 6009
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 6003
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getIdsList()Ljava/util/List;
    .locals 1

    .line 5899
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMsg(I)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 6050
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p1
.end method

.method public getMsgCount()I
    .locals 1

    .line 6044
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMsgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            ">;"
        }
    .end annotation

    .line 6031
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    return-object v0
.end method

.method public getMsgOrBuilder(I)Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
    .locals 1

    .line 6057
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;

    return-object p1
.end method

.method public getMsgOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6038
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    return-object v0
.end method

.method public getOffline()Z
    .locals 1

    .line 6072
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->offline_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$DataCommand;",
            ">;"
        }
    .end annotation

    .line 6875
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 6106
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6112
    :goto_0
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 6113
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/Messages$DataCommand;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v0

    .line 6116
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v1

    const/4 v3, 0x1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    .line 6118
    :goto_1
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x2

    .line 6119
    iget-object v4, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    .line 6120
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6122
    :cond_2
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    const/4 v0, 0x3

    .line 6123
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->offline_:Z

    .line 6124
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 6126
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 6127
    iput v2, p0, Lcom/avos/avoscloud/Messages$DataCommand;->memoizedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 5917
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasOffline()Z
    .locals 2

    .line 6066
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->bitField0_:I

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

    .line 6157
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 6158
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 6161
    invoke-static {}, Lcom/avos/avoscloud/Messages$DataCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6162
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getIdsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 6164
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6166
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getMsgCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6168
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getMsgList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6170
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->hasOffline()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6173
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getOffline()Z

    move-result v1

    .line 6172
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 6175
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6176
    iput v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 5990
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$6200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$DataCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    .line 5991
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 6077
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 6081
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->getMsgCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 6082
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$DataCommand;->getMsg(I)Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6083
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$DataCommand;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6087
    :cond_3
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 1

    .line 6250
    invoke-static {}, Lcom/avos/avoscloud/Messages$DataCommand;->newBuilder()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 2

    .line 6265
    new-instance v0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5899
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5899
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$DataCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5899
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->newBuilderForType()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$DataCommand$Builder;
    .locals 2

    .line 6258
    sget-object v0, Lcom/avos/avoscloud/Messages$DataCommand;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$DataCommand;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 6259
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$DataCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$DataCommand;)Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5899
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->toBuilder()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5899
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$DataCommand;->toBuilder()Lcom/avos/avoscloud/Messages$DataCommand$Builder;

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

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6093
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 6094
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand;->ids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6096
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 6097
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$DataCommand;->msg_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6099
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    .line 6100
    iget-boolean v1, p0, Lcom/avos/avoscloud/Messages$DataCommand;->offline_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6102
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$DataCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
