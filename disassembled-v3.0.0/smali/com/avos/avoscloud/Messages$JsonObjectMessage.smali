.class public final Lcom/avos/avoscloud/Messages$JsonObjectMessage;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonObjectMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile data_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1643
    new-instance v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 1651
    new-instance v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1143
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1248
    iput-byte v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->memoizedIsInitialized:B

    const-string v0, ""

    .line 1144
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->data_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1156
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;-><init>()V

    .line 1159
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 1163
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    .line 1169
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1176
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1177
    iget v4, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->bitField0_:I

    .line 1178
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->data_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1186
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1187
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1184
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1189
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1190
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->makeExtensionsImmutable()V

    throw p1

    .line 1189
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1190
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1134
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1141
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1248
    iput-byte p1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 1134
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 1134
    sget-boolean v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Ljava/lang/Object;
    .locals 0

    .line 1134
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->data_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/avos/avoscloud/Messages$JsonObjectMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->data_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/avos/avoscloud/Messages$JsonObjectMessage;I)I
    .locals 0

    .line 1134
    iput p1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->bitField0_:I

    return p1
.end method

.method static synthetic access$800(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1134
    iget-object p0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 1647
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1195
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 1391
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->toBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 1394
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->toBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1365
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1366
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1372
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1373
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1333
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1339
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1378
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1379
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1385
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1386
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1353
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1354
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1360
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1361
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1322
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1328
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1343
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1349
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            ">;"
        }
    .end annotation

    .line 1661
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1288
    :cond_0
    instance-of v1, p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v1, :cond_1

    .line 1289
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1291
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 1294
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->hasData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->hasData()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1295
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->hasData()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 1296
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getData()Ljava/lang/String;

    move-result-object v1

    .line 1297
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getData()Ljava/lang/String;

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

    .line 1299
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 1218
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->data_:Ljava/lang/Object;

    .line 1219
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1220
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1222
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1224
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1225
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1226
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->data_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1236
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->data_:Ljava/lang/Object;

    .line 1237
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1238
    check-cast v0, Ljava/lang/String;

    .line 1239
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1241
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->data_:Ljava/lang/Object;

    return-object v0

    .line 1244
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 1670
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            ">;"
        }
    .end annotation

    .line 1666
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1271
    iget v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1275
    iget v1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1276
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->data_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1278
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1279
    iput v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .line 1212
    iget v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->bitField0_:I

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

    .line 1305
    iget v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1306
    iget v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1309
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1310
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->hasData()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1312
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 1314
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1315
    iput v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1200
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    const-class v2, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    .line 1201
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1250
    iget-byte v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1254
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->hasData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1255
    iput-byte v2, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->memoizedIsInitialized:B

    return v2

    .line 1258
    :cond_2
    iput-byte v1, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 1389
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->newBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 2

    .line 1404
    new-instance v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->newBuilderForType()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1134
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->newBuilderForType()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 2

    .line 1397
    sget-object v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->DEFAULT_INSTANCE:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;-><init>(Lcom/avos/avoscloud/Messages$1;)V

    .line 1398
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->toBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->toBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

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

    .line 1264
    iget v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->data_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
