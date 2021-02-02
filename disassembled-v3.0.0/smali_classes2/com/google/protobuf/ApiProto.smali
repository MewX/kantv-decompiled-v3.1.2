.class public final Lcom/google/protobuf/ApiProto;
.super Ljava/lang/Object;
.source "ApiProto.java"


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_google_protobuf_Api_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_google_protobuf_Api_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_google_protobuf_Method_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_google_protobuf_Method_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_google_protobuf_Mixin_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_google_protobuf_Mixin_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x2

    .line 40
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\n\u0019google/protobuf/api.proto\u0012\u000fgoogle.protobuf\u001a$google/protobuf/source_context.proto\u001a\u001agoogle/protobuf/type.proto\"\u0081\u0002\n\u0003Api\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012(\n\u0007methods\u0018\u0002 \u0003(\u000b2\u0017.google.protobuf.Method\u0012(\n\u0007options\u0018\u0003 \u0003(\u000b2\u0017.google.protobuf.Option\u0012\u000f\n\u0007version\u0018\u0004 \u0001(\t\u00126\n\u000esource_context\u0018\u0005 \u0001(\u000b2\u001e.google.protobuf.SourceContext\u0012&\n\u0006mixins\u0018\u0006 \u0003(\u000b2\u0016.google.protobuf.Mixin\u0012\'\n\u0006syntax\u0018\u0007 \u0001(\u000e2\u0017.google.protobuf.Syntax\"\u00d5\u0001\n\u0006Method\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010r"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "equest_type_url\u0018\u0002 \u0001(\t\u0012\u0019\n\u0011request_streaming\u0018\u0003 \u0001(\u0008\u0012\u0019\n\u0011response_type_url\u0018\u0004 \u0001(\t\u0012\u001a\n\u0012response_streaming\u0018\u0005 \u0001(\u0008\u0012(\n\u0007options\u0018\u0006 \u0003(\u000b2\u0017.google.protobuf.Option\u0012\'\n\u0006syntax\u0018\u0007 \u0001(\u000e2\u0017.google.protobuf.Syntax\"#\n\u0005Mixin\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004root\u0018\u0002 \u0001(\tBu\n\u0013com.google.protobufB\u0008ApiProtoP\u0001Z+google.golang.org/genproto/protobuf/api;api\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    aput-object v4, v1, v3

    .line 61
    new-instance v4, Lcom/google/protobuf/ApiProto$1;

    invoke-direct {v4}, Lcom/google/protobuf/ApiProto$1;-><init>()V

    .line 69
    new-array v5, v0, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 72
    invoke-static {}, Lcom/google/protobuf/SourceContextProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v6

    aput-object v6, v5, v2

    .line 73
    invoke-static {}, Lcom/google/protobuf/TypeProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v6

    aput-object v6, v5, v3

    .line 70
    invoke-static {v1, v5, v4}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 76
    invoke-static {}, Lcom/google/protobuf/ApiProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v1, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Api_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 77
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v4, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Api_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v5, 0x7

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "Name"

    aput-object v7, v6, v2

    const-string v8, "Methods"

    aput-object v8, v6, v3

    const-string v8, "Options"

    aput-object v8, v6, v0

    const/4 v9, 0x3

    const-string v10, "Version"

    aput-object v10, v6, v9

    const/4 v10, 0x4

    const-string v11, "SourceContext"

    aput-object v11, v6, v10

    const/4 v11, 0x5

    const-string v12, "Mixins"

    aput-object v12, v6, v11

    const-string v12, "Syntax"

    const/4 v13, 0x6

    aput-object v12, v6, v13

    invoke-direct {v1, v4, v6}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Api_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 82
    invoke-static {}, Lcom/google/protobuf/ApiProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v1, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Method_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 83
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v4, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Method_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v7, v5, v2

    const-string v6, "RequestTypeUrl"

    aput-object v6, v5, v3

    const-string v6, "RequestStreaming"

    aput-object v6, v5, v0

    const-string v6, "ResponseTypeUrl"

    aput-object v6, v5, v9

    const-string v6, "ResponseStreaming"

    aput-object v6, v5, v10

    aput-object v8, v5, v11

    aput-object v12, v5, v13

    invoke-direct {v1, v4, v5}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Method_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 88
    invoke-static {}, Lcom/google/protobuf/ApiProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v1, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 89
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v4, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v7, v0, v2

    const-string v2, "Root"

    aput-object v2, v0, v3

    invoke-direct {v1, v4, v0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 93
    invoke-static {}, Lcom/google/protobuf/SourceContextProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 94
    invoke-static {}, Lcom/google/protobuf/TypeProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lcom/google/protobuf/ApiProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/protobuf/ApiProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/google/protobuf/ApiProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method
