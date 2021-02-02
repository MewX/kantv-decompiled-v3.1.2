.class public final enum Lcom/avos/avoscloud/Messages$CommandType;
.super Ljava/lang/Enum;
.source "Messages.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/Messages$CommandType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/Messages$CommandType;

.field private static final VALUES:[Lcom/avos/avoscloud/Messages$CommandType;

.field public static final enum ack:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final ack_VALUE:I = 0x3

.field public static final enum blacklist:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final blacklist_VALUE:I = 0x14

.field public static final enum conv:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final conv_VALUE:I = 0x1

.field public static final enum data:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final data_VALUE:I = 0x9

.field public static final enum direct:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final direct_VALUE:I = 0x2

.field public static final enum echo:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final echo_VALUE:I = 0xe

.field public static final enum error:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final error_VALUE:I = 0x7

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/avos/avoscloud/Messages$CommandType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum loggedin:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final loggedin_VALUE:I = 0xf

.field public static final enum loggedout:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final loggedout_VALUE:I = 0x11

.field public static final enum login:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final login_VALUE:I = 0x8

.field public static final enum logout:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final logout_VALUE:I = 0x10

.field public static final enum logs:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final logs_VALUE:I = 0x6

.field public static final enum patch:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final patch_VALUE:I = 0x12

.field public static final enum presence:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final presence_VALUE:I = 0xc

.field public static final enum pubsub:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final pubsub_VALUE:I = 0x13

.field public static final enum rcp:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final rcp_VALUE:I = 0x4

.field public static final enum read:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final read_VALUE:I = 0xb

.field public static final enum report:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final report_VALUE:I = 0xd

.field public static final enum room:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final room_VALUE:I = 0xa

.field public static final enum session:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final session_VALUE:I = 0x0

.field public static final enum unread:Lcom/avos/avoscloud/Messages$CommandType;

.field public static final unread_VALUE:I = 0x5


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 25
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/4 v1, 0x0

    const-string v2, "session"

    invoke-direct {v0, v2, v1, v1}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->session:Lcom/avos/avoscloud/Messages$CommandType;

    .line 29
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/4 v2, 0x1

    const-string v3, "conv"

    invoke-direct {v0, v3, v2, v2}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->conv:Lcom/avos/avoscloud/Messages$CommandType;

    .line 33
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/4 v3, 0x2

    const-string v4, "direct"

    invoke-direct {v0, v4, v3, v3}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->direct:Lcom/avos/avoscloud/Messages$CommandType;

    .line 37
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/4 v4, 0x3

    const-string v5, "ack"

    invoke-direct {v0, v5, v4, v4}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->ack:Lcom/avos/avoscloud/Messages$CommandType;

    .line 41
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/4 v5, 0x4

    const-string v6, "rcp"

    invoke-direct {v0, v6, v5, v5}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->rcp:Lcom/avos/avoscloud/Messages$CommandType;

    .line 45
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/4 v6, 0x5

    const-string v7, "unread"

    invoke-direct {v0, v7, v6, v6}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->unread:Lcom/avos/avoscloud/Messages$CommandType;

    .line 49
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/4 v7, 0x6

    const-string v8, "logs"

    invoke-direct {v0, v8, v7, v7}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->logs:Lcom/avos/avoscloud/Messages$CommandType;

    .line 53
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/4 v8, 0x7

    const-string v9, "error"

    invoke-direct {v0, v9, v8, v8}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->error:Lcom/avos/avoscloud/Messages$CommandType;

    .line 57
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v9, 0x8

    const-string v10, "login"

    invoke-direct {v0, v10, v9, v9}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->login:Lcom/avos/avoscloud/Messages$CommandType;

    .line 61
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v10, 0x9

    const-string v11, "data"

    invoke-direct {v0, v11, v10, v10}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->data:Lcom/avos/avoscloud/Messages$CommandType;

    .line 65
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v11, 0xa

    const-string v12, "room"

    invoke-direct {v0, v12, v11, v11}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->room:Lcom/avos/avoscloud/Messages$CommandType;

    .line 69
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v12, 0xb

    const-string v13, "read"

    invoke-direct {v0, v13, v12, v12}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->read:Lcom/avos/avoscloud/Messages$CommandType;

    .line 73
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v13, 0xc

    const-string v14, "presence"

    invoke-direct {v0, v14, v13, v13}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->presence:Lcom/avos/avoscloud/Messages$CommandType;

    .line 77
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v14, 0xd

    const-string v15, "report"

    invoke-direct {v0, v15, v14, v14}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->report:Lcom/avos/avoscloud/Messages$CommandType;

    .line 81
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v15, 0xe

    const-string v14, "echo"

    invoke-direct {v0, v14, v15, v15}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->echo:Lcom/avos/avoscloud/Messages$CommandType;

    .line 85
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const-string v14, "loggedin"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->loggedin:Lcom/avos/avoscloud/Messages$CommandType;

    .line 89
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const-string v13, "logout"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->logout:Lcom/avos/avoscloud/Messages$CommandType;

    .line 93
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const-string v13, "loggedout"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->loggedout:Lcom/avos/avoscloud/Messages$CommandType;

    .line 97
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const-string v13, "patch"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->patch:Lcom/avos/avoscloud/Messages$CommandType;

    .line 101
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const-string v13, "pubsub"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->pubsub:Lcom/avos/avoscloud/Messages$CommandType;

    .line 105
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType;

    const-string v13, "blacklist"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15}, Lcom/avos/avoscloud/Messages$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->blacklist:Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v0, 0x15

    .line 20
    new-array v0, v0, [Lcom/avos/avoscloud/Messages$CommandType;

    sget-object v13, Lcom/avos/avoscloud/Messages$CommandType;->session:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->conv:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->direct:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->ack:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->rcp:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->unread:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->logs:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->error:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->login:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->data:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->room:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->read:Lcom/avos/avoscloud/Messages$CommandType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->presence:Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->report:Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->echo:Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->loggedin:Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->logout:Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->loggedout:Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->patch:Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->pubsub:Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/Messages$CommandType;->blacklist:Lcom/avos/avoscloud/Messages$CommandType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->$VALUES:[Lcom/avos/avoscloud/Messages$CommandType;

    .line 238
    new-instance v0, Lcom/avos/avoscloud/Messages$CommandType$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$CommandType$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 258
    invoke-static {}, Lcom/avos/avoscloud/Messages$CommandType;->values()[Lcom/avos/avoscloud/Messages$CommandType;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/Messages$CommandType;->VALUES:[Lcom/avos/avoscloud/Messages$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 272
    iput p3, p0, Lcom/avos/avoscloud/Messages$CommandType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/avos/avoscloud/Messages$CommandType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 228
    :pswitch_0
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->blacklist:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 227
    :pswitch_1
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->pubsub:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 226
    :pswitch_2
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->patch:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 225
    :pswitch_3
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->loggedout:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 224
    :pswitch_4
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->logout:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 223
    :pswitch_5
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->loggedin:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 222
    :pswitch_6
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->echo:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 221
    :pswitch_7
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->report:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 220
    :pswitch_8
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->presence:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 219
    :pswitch_9
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->read:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 218
    :pswitch_a
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->room:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 217
    :pswitch_b
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->data:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 216
    :pswitch_c
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->login:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 215
    :pswitch_d
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->error:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 214
    :pswitch_e
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->logs:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 213
    :pswitch_f
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->unread:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 212
    :pswitch_10
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->rcp:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 211
    :pswitch_11
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->ack:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 210
    :pswitch_12
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->direct:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 209
    :pswitch_13
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->conv:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    .line 208
    :pswitch_14
    sget-object p0, Lcom/avos/avoscloud/Messages$CommandType;->session:Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 255
    invoke-static {}, Lcom/avos/avoscloud/Messages;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/avos/avoscloud/Messages$CommandType;",
            ">;"
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/avos/avoscloud/Messages$CommandType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/avos/avoscloud/Messages$CommandType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    invoke-static {p0}, Lcom/avos/avoscloud/Messages$CommandType;->forNumber(I)Lcom/avos/avoscloud/Messages$CommandType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/avos/avoscloud/Messages$CommandType;
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/Messages$CommandType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 266
    sget-object v0, Lcom/avos/avoscloud/Messages$CommandType;->VALUES:[Lcom/avos/avoscloud/Messages$CommandType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 263
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$CommandType;
    .locals 1

    .line 20
    const-class v0, Lcom/avos/avoscloud/Messages$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/Messages$CommandType;
    .locals 1

    .line 20
    sget-object v0, Lcom/avos/avoscloud/Messages$CommandType;->$VALUES:[Lcom/avos/avoscloud/Messages$CommandType;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/Messages$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/Messages$CommandType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 251
    invoke-static {}, Lcom/avos/avoscloud/Messages$CommandType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/avos/avoscloud/Messages$CommandType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 247
    invoke-static {}, Lcom/avos/avoscloud/Messages$CommandType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$CommandType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
