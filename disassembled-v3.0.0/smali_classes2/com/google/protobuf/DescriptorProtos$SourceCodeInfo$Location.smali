.class public final Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

.field public static final LEADING_COMMENTS_FIELD_NUMBER:I = 0x3

.field public static final LEADING_DETACHED_COMMENTS_FIELD_NUMBER:I = 0x6

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field public static final SPAN_FIELD_NUMBER:I = 0x2

.field public static final TRAILING_COMMENTS_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile leadingComments_:Ljava/lang/Object;

.field private leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private pathMemoizedSerializedSize:I

.field private path_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private spanMemoizedSerializedSize:I

.field private span_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile trailingComments_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36972
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 36980
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35171
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 35397
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    .line 35444
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    .line 35676
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    .line 35172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 35173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    const-string v0, ""

    .line 35174
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 35175
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 35176
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35188
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    .line 35191
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v1, :cond_13

    .line 35195
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    if-eqz v6, :cond_f

    const/16 v7, 0x8

    if-eq v6, v7, :cond_d

    const/16 v7, 0xa

    if-eq v6, v7, :cond_a

    if-eq v6, v3, :cond_8

    const/16 v7, 0x12

    if-eq v6, v7, :cond_5

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_4

    const/16 v7, 0x22

    if-eq v6, v7, :cond_3

    const/16 v7, 0x32

    if-eq v6, v7, :cond_1

    .line 35201
    invoke-virtual {p0, p1, v0, p2, v6}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 35262
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    and-int/lit8 v7, v2, 0x10

    if-eq v7, v3, :cond_2

    .line 35264
    new-instance v7, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v7}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x10

    .line 35267
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v7, v6}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 35256
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 35257
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/2addr v7, v4

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 35258
    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    goto :goto_0

    .line 35250
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 35251
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    or-int/2addr v7, v5

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    .line 35252
    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    goto :goto_0

    .line 35237
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    .line 35238
    invoke-virtual {p1, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    and-int/lit8 v7, v2, 0x2

    if-eq v7, v4, :cond_6

    .line 35239
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_6

    .line 35240
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 35243
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_7

    .line 35244
    iget-object v7, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35246
    :cond_7
    invoke-virtual {p1, v6}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v6, v2, 0x2

    if-eq v6, v4, :cond_9

    .line 35230
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 35233
    :cond_9
    iget-object v6, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 35216
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    .line 35217
    invoke-virtual {p1, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    and-int/lit8 v7, v2, 0x1

    if-eq v7, v5, :cond_b

    .line 35218
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_b

    .line 35219
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 35222
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_c

    .line 35223
    iget-object v7, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35225
    :cond_c
    invoke-virtual {p1, v6}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :cond_d
    and-int/lit8 v6, v2, 0x1

    if-eq v6, v5, :cond_e

    .line 35209
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 35212
    :cond_e
    iget-object v6, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_f
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 35275
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 35276
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 35273
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v5, :cond_10

    .line 35279
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    :cond_10
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v4, :cond_11

    .line 35282
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v2, 0x10

    if-ne p2, v3, :cond_12

    .line 35285
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    .line 35287
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 35288
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->makeExtensionsImmutable()V

    throw p1

    :cond_13
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v5, :cond_14

    .line 35279
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v4, :cond_15

    .line 35282
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v2, 0x10

    if-ne p1, v3, :cond_16

    .line 35285
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    .line 35287
    :cond_16
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 35288
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35162
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 35169
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 35397
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    .line 35444
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    .line 35676
    iput-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 35162
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$26500(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/util/List;
    .locals 0

    .line 35162
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$26502(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 35162
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$26600(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/util/List;
    .locals 0

    .line 35162
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$26602(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 35162
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$26700(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;
    .locals 0

    .line 35162
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$26702(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35162
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26800(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;
    .locals 0

    .line 35162
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$26802(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35162
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26900(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35162
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$26902(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 35162
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$27002(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;I)I
    .locals 0

    .line 35162
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .line 36976
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 35293
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$26000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 35902
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->toBuilder()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 35905
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->toBuilder()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35876
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 35877
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35883
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 35884
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35844
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35850
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35889
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 35890
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35896
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 35897
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35864
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 35865
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35871
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    .line 35872
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35833
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35839
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35854
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35860
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .line 36990
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 35772
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    if-nez v1, :cond_1

    .line 35773
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 35775
    :cond_1
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 35778
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v1

    .line 35779
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

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

    .line 35780
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v1

    .line 35781
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

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

    .line 35782
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 35783
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    .line 35784
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingComments()Ljava/lang/String;

    move-result-object v1

    .line 35785
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingComments()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 35787
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 35788
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    .line 35789
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getTrailingComments()Ljava/lang/String;

    move-result-object v1

    .line 35790
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getTrailingComments()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    .line 35792
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 35793
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_b

    .line 35794
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .line 36999
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 35162
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 35162
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLeadingComments()Ljava/lang/String;
    .locals 2

    .line 35536
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 35537
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 35538
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 35540
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 35542
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35543
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35544
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getLeadingCommentsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 35593
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    .line 35594
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 35595
    check-cast v0, Ljava/lang/String;

    .line 35596
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35598
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    return-object v0

    .line 35601
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLeadingDetachedComments(I)Ljava/lang/String;
    .locals 1

    .line 35666
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getLeadingDetachedCommentsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 35673
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getLeadingDetachedCommentsCount()I
    .locals 1

    .line 35660
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getLeadingDetachedCommentsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 35654
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getLeadingDetachedCommentsList()Ljava/util/List;
    .locals 1

    .line 35162
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .line 36995
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath(I)I
    .locals 1

    .line 35395
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPathCount()I
    .locals 1

    .line 35365
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 35335
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 35716
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 35722
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 35723
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    .line 35724
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int v1, v0, v2

    .line 35727
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 35730
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 35732
    :cond_2
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 35736
    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 35737
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    .line 35738
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v1, v3

    .line 35741
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 35744
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 35746
    :cond_4
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    .line 35748
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_5

    const/4 v2, 0x3

    .line 35749
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 35751
    :cond_5
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    const/4 v2, 0x4

    .line 35752
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_6
    const/4 v2, 0x0

    .line 35756
    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 35757
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v1, v2

    .line 35760
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    .line 35762
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 35763
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedSize:I

    return v1
.end method

.method public getSpan(I)I
    .locals 1

    .line 35442
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSpanCount()I
    .locals 1

    .line 35428
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 35414
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    return-object v0
.end method

.method public getTrailingComments()Ljava/lang/String;
    .locals 2

    .line 35617
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 35618
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 35619
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 35621
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 35623
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35624
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35625
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTrailingCommentsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 35635
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    .line 35636
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 35637
    check-cast v0, Ljava/lang/String;

    .line 35638
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35640
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    return-object v0

    .line 35643
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 35182
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasLeadingComments()Z
    .locals 2

    .line 35491
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTrailingComments()Z
    .locals 2

    .line 35611
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

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

    .line 35800
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 35801
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 35804
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35805
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 35807
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35809
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 35811
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35813
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 35815
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingComments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35817
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 35819
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getTrailingComments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35821
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 35823
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 35825
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35826
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 35298
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$26100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 35299
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 35678
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 35682
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 35900
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilder()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    .line 35915
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 35162
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 35162
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 35162
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    .line 35908
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 35909
    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 35162
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->toBuilder()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 35162
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->toBuilder()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    .line 35688
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSerializedSize()I

    .line 35689
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    .line 35690
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 35691
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->pathMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35693
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 35694
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->path_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35696
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x12

    .line 35697
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 35698
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->spanMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_2
    const/4 v1, 0x0

    .line 35700
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 35701
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->span_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 35703
    :cond_3
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    .line 35704
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingComments_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 35706
    :cond_4
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x4

    .line 35707
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->trailingComments_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 35709
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x6

    .line 35710
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 35712
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
