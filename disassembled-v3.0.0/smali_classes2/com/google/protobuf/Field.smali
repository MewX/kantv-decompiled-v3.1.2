.class public final Lcom/google/protobuf/Field;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Field.java"

# interfaces
.implements Lcom/google/protobuf/FieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Field$Builder;,
        Lcom/google/protobuf/Field$Cardinality;,
        Lcom/google/protobuf/Field$Kind;
    }
.end annotation


# static fields
.field public static final CARDINALITY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

.field public static final DEFAULT_VALUE_FIELD_NUMBER:I = 0xb

.field public static final JSON_NAME_FIELD_NUMBER:I = 0xa

.field public static final KIND_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final ONEOF_INDEX_FIELD_NUMBER:I = 0x7

.field public static final OPTIONS_FIELD_NUMBER:I = 0x9

.field public static final PACKED_FIELD_NUMBER:I = 0x8

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cardinality_:I

.field private volatile defaultValue_:Ljava/lang/Object;

.field private volatile jsonName_:Ljava/lang/Object;

.field private kind_:I

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private number_:I

.field private oneofIndex_:I

.field private options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private packed_:Z

.field private volatile typeUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2438
    new-instance v0, Lcom/google/protobuf/Field;

    invoke-direct {v0}, Lcom/google/protobuf/Field;-><init>()V

    sput-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    .line 2446
    new-instance v0, Lcom/google/protobuf/Field$1;

    invoke-direct {v0}, Lcom/google/protobuf/Field$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1023
    iput-byte v0, p0, Lcom/google/protobuf/Field;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/google/protobuf/Field;->kind_:I

    .line 24
    iput v0, p0, Lcom/google/protobuf/Field;->cardinality_:I

    .line 25
    iput v0, p0, Lcom/google/protobuf/Field;->number_:I

    const-string v1, ""

    .line 26
    iput-object v1, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    .line 27
    iput-object v1, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 28
    iput v0, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    .line 29
    iput-boolean v0, p0, Lcom/google/protobuf/Field;->packed_:Z

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    .line 31
    iput-object v1, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/Field;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x80

    if-nez v1, :cond_3

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/Field;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto :goto_2

    .line 118
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 120
    iput-object v4, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    goto :goto_0

    .line 112
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 114
    iput-object v4, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    and-int/lit16 v4, v2, 0x80

    if-eq v4, v3, :cond_1

    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x80

    .line 107
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    .line 108
    invoke-static {}, Lcom/google/protobuf/Option;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    .line 107
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/Field;->packed_:Z

    goto :goto_0

    .line 94
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    goto :goto_0

    .line 87
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 89
    iput-object v4, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 81
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 83
    iput-object v4, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 77
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protobuf/Field;->number_:I

    goto :goto_0

    .line 70
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 72
    iput v4, p0, Lcom/google/protobuf/Field;->cardinality_:I

    goto :goto_0

    .line 64
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 66
    iput v4, p0, Lcom/google/protobuf/Field;->kind_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_a
    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 128
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 129
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 126
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit16 p2, v2, 0x80

    if-ne p2, v3, :cond_2

    .line 132
    iget-object p2, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    .line 134
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/Field;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 135
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->makeExtensionsImmutable()V

    throw p1

    :cond_3
    and-int/lit16 p1, v2, 0x80

    if-ne p1, v3, :cond_4

    .line 132
    iget-object p1, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    .line 134
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Field;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 135
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x22 -> :sswitch_6
        0x32 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Field$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Field;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1023
    iput-byte p1, p0, Lcom/google/protobuf/Field;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Field$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/google/protobuf/Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/protobuf/Field;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/google/protobuf/Field;->bitField0_:I

    return p1
.end method

.method static synthetic access$1400()Lcom/google/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/protobuf/Field;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/google/protobuf/Field;->kind_:I

    return p0
.end method

.method static synthetic access$302(Lcom/google/protobuf/Field;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/google/protobuf/Field;->kind_:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/protobuf/Field;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/google/protobuf/Field;->cardinality_:I

    return p0
.end method

.method static synthetic access$402(Lcom/google/protobuf/Field;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/google/protobuf/Field;->cardinality_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protobuf/Field;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/google/protobuf/Field;->number_:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protobuf/Field;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/protobuf/Field;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/google/protobuf/Field;->packed_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Field;
    .locals 1

    .line 2442
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 140
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Field_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Field$Builder;
    .locals 1

    .line 1254
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->toBuilder()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$Builder;
    .locals 1

    .line 1257
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->toBuilder()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1228
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1229
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1235
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1236
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1196
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1202
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1241
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1242
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1248
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1249
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1216
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1217
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1223
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1224
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1185
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1191
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1206
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1212
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Field;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 2456
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1119
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/Field;

    if-nez v1, :cond_1

    .line 1120
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1122
    :cond_1
    check-cast p1, Lcom/google/protobuf/Field;

    .line 1125
    iget v1, p0, Lcom/google/protobuf/Field;->kind_:I

    iget v2, p1, Lcom/google/protobuf/Field;->kind_:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 1126
    iget v1, p0, Lcom/google/protobuf/Field;->cardinality_:I

    iget v2, p1, Lcom/google/protobuf/Field;->cardinality_:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 1127
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getNumber()I

    move-result v1

    .line 1128
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getNumber()I

    move-result v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 1129
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1130
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 1131
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 1132
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_7

    .line 1133
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getOneofIndex()I

    move-result v1

    .line 1134
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getOneofIndex()I

    move-result v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_8

    .line 1135
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getPacked()Z

    move-result v1

    .line 1136
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getPacked()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_9

    .line 1137
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v1

    .line 1138
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_a

    .line 1139
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v1

    .line 1140
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_b

    .line 1141
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 1142
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_9

    :cond_b
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_c

    .line 1143
    iget-object v1, p0, Lcom/google/protobuf/Field;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/Field;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCardinality()Lcom/google/protobuf/Field$Cardinality;
    .locals 1

    .line 754
    iget v0, p0, Lcom/google/protobuf/Field;->cardinality_:I

    invoke-static {v0}, Lcom/google/protobuf/Field$Cardinality;->valueOf(I)Lcom/google/protobuf/Field$Cardinality;

    move-result-object v0

    if-nez v0, :cond_0

    .line 755
    sget-object v0, Lcom/google/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/google/protobuf/Field$Cardinality;

    :cond_0
    return-object v0
.end method

.method public getCardinalityValue()I
    .locals 1

    .line 744
    iget v0, p0, Lcom/google/protobuf/Field;->cardinality_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Field;
    .locals 1

    .line 2465
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultInstanceForType()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultInstanceForType()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    .line 991
    iget-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    .line 992
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 993
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 995
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 997
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 998
    iput-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1011
    iget-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    .line 1012
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1013
    check-cast v0, Ljava/lang/String;

    .line 1014
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1016
    iput-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object v0

    .line 1019
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getJsonName()Ljava/lang/String;
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 950
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 951
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 953
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 955
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 956
    iput-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getJsonNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 970
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 971
    check-cast v0, Ljava/lang/String;

    .line 972
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 974
    iput-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object v0

    .line 977
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getKind()Lcom/google/protobuf/Field$Kind;
    .locals 1

    .line 730
    iget v0, p0, Lcom/google/protobuf/Field;->kind_:I

    invoke-static {v0}, Lcom/google/protobuf/Field$Kind;->valueOf(I)Lcom/google/protobuf/Field$Kind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 731
    sget-object v0, Lcom/google/protobuf/Field$Kind;->UNRECOGNIZED:Lcom/google/protobuf/Field$Kind;

    :cond_0
    return-object v0
.end method

.method public getKindValue()I
    .locals 1

    .line 720
    iget v0, p0, Lcom/google/protobuf/Field;->kind_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    .line 782
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 783
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 785
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 787
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 788
    iput-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    .line 802
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 803
    check-cast v0, Ljava/lang/String;

    .line 804
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 806
    iput-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    return-object v0

    .line 809
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 768
    iget v0, p0, Lcom/google/protobuf/Field;->number_:I

    return v0
.end method

.method public getOneofIndex()I
    .locals 1

    .line 868
    iget v0, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    return v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option;

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getPacked()Z
    .locals 1

    .line 881
    iget-boolean v0, p0, Lcom/google/protobuf/Field;->packed_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 2461
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1069
    iget v0, p0, Lcom/google/protobuf/Field;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1073
    :cond_0
    iget v0, p0, Lcom/google/protobuf/Field;->kind_:I

    sget-object v1, Lcom/google/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/google/protobuf/Field$Kind;

    invoke-virtual {v1}, Lcom/google/protobuf/Field$Kind;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 1074
    iget v0, p0, Lcom/google/protobuf/Field;->kind_:I

    const/4 v1, 0x1

    .line 1075
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1077
    :goto_0
    iget v1, p0, Lcom/google/protobuf/Field;->cardinality_:I

    sget-object v3, Lcom/google/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/google/protobuf/Field$Cardinality;

    invoke-virtual {v3}, Lcom/google/protobuf/Field$Cardinality;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_2

    const/4 v1, 0x2

    .line 1078
    iget v3, p0, Lcom/google/protobuf/Field;->cardinality_:I

    .line 1079
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1081
    :cond_2
    iget v1, p0, Lcom/google/protobuf/Field;->number_:I

    if-eqz v1, :cond_3

    const/4 v3, 0x3

    .line 1083
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1085
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 1086
    iget-object v3, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1088
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    .line 1089
    iget-object v3, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1091
    :cond_5
    iget v1, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    if-eqz v1, :cond_6

    const/4 v3, 0x7

    .line 1093
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1095
    :cond_6
    iget-boolean v1, p0, Lcom/google/protobuf/Field;->packed_:Z

    if-eqz v1, :cond_7

    const/16 v3, 0x8

    .line 1097
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1099
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    const/16 v1, 0x9

    .line 1100
    iget-object v3, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    .line 1101
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1103
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getJsonNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xa

    .line 1104
    iget-object v2, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1106
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xb

    .line 1107
    iget-object v2, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1109
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/Field;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1110
    iput v0, p0, Lcom/google/protobuf/Field;->memoizedSize:I

    return v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 825
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 826
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 828
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 830
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 831
    iput-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 846
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 847
    check-cast v0, Ljava/lang/String;

    .line 848
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 850
    iput-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object v0

    .line 853
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/Field;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1149
    iget v0, p0, Lcom/google/protobuf/Field;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1150
    iget v0, p0, Lcom/google/protobuf/Field;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1153
    invoke-static {}, Lcom/google/protobuf/Field;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1155
    iget v1, p0, Lcom/google/protobuf/Field;->kind_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1157
    iget v1, p0, Lcom/google/protobuf/Field;->cardinality_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1159
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getNumber()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 1161
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 1163
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 1165
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getOneofIndex()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 1168
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getPacked()Z

    move-result v1

    .line 1167
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1169
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 1171
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 1174
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 1176
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 1177
    iget-object v1, p0, Lcom/google/protobuf/Field;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1178
    iput v0, p0, Lcom/google/protobuf/Field;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 145
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Field_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Field;

    const-class v2, Lcom/google/protobuf/Field$Builder;

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1025
    iget-byte v0, p0, Lcom/google/protobuf/Field;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1029
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/Field;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/Field$Builder;
    .locals 1

    .line 1252
    invoke-static {}, Lcom/google/protobuf/Field;->newBuilder()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Field$Builder;
    .locals 2

    .line 1267
    new-instance v0, Lcom/google/protobuf/Field$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/Field$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Field$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->newBuilderForType()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->newBuilderForType()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/Field$Builder;
    .locals 2

    .line 1260
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Field$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Field$Builder;-><init>(Lcom/google/protobuf/Field$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/Field$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Field$Builder;-><init>(Lcom/google/protobuf/Field$1;)V

    .line 1261
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->toBuilder()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->toBuilder()Lcom/google/protobuf/Field$Builder;

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

    .line 1035
    iget v0, p0, Lcom/google/protobuf/Field;->kind_:I

    sget-object v1, Lcom/google/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/google/protobuf/Field$Kind;

    invoke-virtual {v1}, Lcom/google/protobuf/Field$Kind;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1036
    iget v0, p0, Lcom/google/protobuf/Field;->kind_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1038
    :cond_0
    iget v0, p0, Lcom/google/protobuf/Field;->cardinality_:I

    sget-object v1, Lcom/google/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/google/protobuf/Field$Cardinality;

    invoke-virtual {v1}, Lcom/google/protobuf/Field$Cardinality;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 1039
    iget v1, p0, Lcom/google/protobuf/Field;->cardinality_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1041
    :cond_1
    iget v0, p0, Lcom/google/protobuf/Field;->number_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1042
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1044
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 1045
    iget-object v1, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1047
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    .line 1048
    iget-object v1, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1050
    :cond_4
    iget v0, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 1051
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1053
    :cond_5
    iget-boolean v0, p0, Lcom/google/protobuf/Field;->packed_:Z

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 1054
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_6
    const/4 v0, 0x0

    .line 1056
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/16 v1, 0x9

    .line 1057
    iget-object v2, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getJsonNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0xa

    .line 1060
    iget-object v1, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1062
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xb

    .line 1063
    iget-object v1, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1065
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/Field;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
