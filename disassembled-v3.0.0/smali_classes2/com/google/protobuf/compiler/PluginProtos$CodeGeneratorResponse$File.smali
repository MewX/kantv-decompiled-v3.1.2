.class public final Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "PluginProtos.java"

# interfaces
.implements Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$FileOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "File"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

.field public static final INSERTION_POINT_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile content_:Ljava/lang/Object;

.field private volatile insertionPoint_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4519
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    invoke-direct {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;-><init>()V

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    .line 4527
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$1;

    invoke-direct {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3243
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3605
    iput-byte v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->memoizedIsInitialized:B

    const-string v0, ""

    .line 3244
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->name_:Ljava/lang/Object;

    .line 3245
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->insertionPoint_:Ljava/lang/Object;

    .line 3246
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->content_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3258
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;-><init>()V

    .line 3261
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 3265
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x7a

    if-eq v2, v4, :cond_1

    .line 3271
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3290
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 3291
    iget v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    .line 3292
    iput-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->content_:Ljava/lang/Object;

    goto :goto_0

    .line 3284
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 3285
    iget v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    .line 3286
    iput-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->insertionPoint_:Ljava/lang/Object;

    goto :goto_0

    .line 3278
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 3279
    iget v4, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    .line 3280
    iput-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->name_:Ljava/lang/Object;
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

    .line 3300
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3301
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3298
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3303
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3304
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->makeExtensionsImmutable()V

    throw p1

    .line 3303
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3304
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/compiler/PluginProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3234
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3241
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3605
    iput-byte p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/compiler/PluginProtos$1;)V
    .locals 0

    .line 3234
    invoke-direct {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3300()Z
    .locals 1

    .line 3234
    sget-boolean v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;
    .locals 0

    .line 3234
    iget-object p0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3234
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;
    .locals 0

    .line 3234
    iget-object p0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->insertionPoint_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3234
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->insertionPoint_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;
    .locals 0

    .line 3234
    iget-object p0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->content_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3234
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->content_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;I)I
    .locals 0

    .line 3234
    iput p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    return p1
.end method

.method static synthetic access$3900(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 3234
    iget-object p0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1

    .line 4523
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3309
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    .line 3774
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    .line 3777
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3748
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    .line 3749
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3755
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    .line 3756
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3716
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3722
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3761
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    .line 3762
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3768
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    .line 3769
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3736
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    .line 3737
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3743
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    .line 3744
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3705
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3711
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3726
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3732
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;",
            ">;"
        }
    .end annotation

    .line 4537
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3653
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    if-nez v1, :cond_1

    .line 3654
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3656
    :cond_1
    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    .line 3659
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 3660
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasName()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 3661
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3662
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getName()Ljava/lang/String;

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

    .line 3664
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasInsertionPoint()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasInsertionPoint()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 3665
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasInsertionPoint()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 3666
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getInsertionPoint()Ljava/lang/String;

    move-result-object v1

    .line 3667
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getInsertionPoint()Ljava/lang/String;

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

    .line 3669
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasContent()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasContent()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 3670
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 3671
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 3672
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getContent()Ljava/lang/String;

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

    .line 3674
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 3571
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->content_:Ljava/lang/Object;

    .line 3572
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3573
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3575
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3577
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3578
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3579
    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->content_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getContentBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3593
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->content_:Ljava/lang/Object;

    .line 3594
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3595
    check-cast v0, Ljava/lang/String;

    .line 3596
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3598
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->content_:Ljava/lang/Object;

    return-object v0

    .line 3601
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3234
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3234
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1

    .line 4546
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    return-object v0
.end method

.method public getInsertionPoint()Ljava/lang/String;
    .locals 2

    .line 3485
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->insertionPoint_:Ljava/lang/Object;

    .line 3486
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3487
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3489
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3491
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3492
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3493
    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->insertionPoint_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getInsertionPointBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3539
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->insertionPoint_:Ljava/lang/Object;

    .line 3540
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3541
    check-cast v0, Ljava/lang/String;

    .line 3542
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3544
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->insertionPoint_:Ljava/lang/Object;

    return-object v0

    .line 3547
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 3358
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->name_:Ljava/lang/Object;

    .line 3359
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3360
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3362
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3364
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3365
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3366
    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3389
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->name_:Ljava/lang/Object;

    .line 3390
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3391
    check-cast v0, Ljava/lang/String;

    .line 3392
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3394
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->name_:Ljava/lang/Object;

    return-object v0

    .line 3397
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
            "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;",
            ">;"
        }
    .end annotation

    .line 4542
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3630
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3634
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3635
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->name_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3637
    :cond_1
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 3638
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->insertionPoint_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3640
    :cond_2
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/16 v1, 0xf

    .line 3641
    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->content_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3643
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3644
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3252
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasContent()Z
    .locals 2

    .line 3561
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

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

.method public hasInsertionPoint()Z
    .locals 2

    .line 3443
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .line 3339
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

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

    .line 3680
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3681
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 3684
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3685
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3687
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3689
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasInsertionPoint()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 3691
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getInsertionPoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3693
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 3695
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 3697
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3698
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3314
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->access$3000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    const-class v2, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    .line 3315
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3607
    iget-byte v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3611
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3234
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->newBuilderForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3234
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3234
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->newBuilderForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 1

    .line 3772
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->newBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 2

    .line 3787
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/compiler/PluginProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3234
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3234
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;
    .locals 2

    .line 3780
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;-><init>(Lcom/google/protobuf/compiler/PluginProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;-><init>(Lcom/google/protobuf/compiler/PluginProtos$1;)V

    .line 3781
    invoke-virtual {v0, p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;->mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$Builder;

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

    .line 3617
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3618
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3620
    :cond_0
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3621
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->insertionPoint_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3623
    :cond_1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/16 v0, 0xf

    .line 3624
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->content_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3626
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
