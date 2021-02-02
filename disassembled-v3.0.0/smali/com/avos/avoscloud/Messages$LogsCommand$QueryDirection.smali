.class public final enum Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;
.super Ljava/lang/Enum;
.source "Messages.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$LogsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

.field public static final enum NEW:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

.field public static final NEW_VALUE:I = 0x2

.field public static final enum OLD:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

.field public static final OLD_VALUE:I = 0x1

.field private static final VALUES:[Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24083
    new-instance v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "OLD"

    invoke-direct {v0, v3, v1, v2}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->OLD:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    .line 24087
    new-instance v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    const/4 v3, 0x2

    const-string v4, "NEW"

    invoke-direct {v0, v4, v2, v3}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->NEW:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    .line 24078
    new-array v0, v3, [Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    sget-object v3, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->OLD:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    aput-object v3, v0, v1

    sget-object v1, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->NEW:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    aput-object v1, v0, v2

    sput-object v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->$VALUES:[Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    .line 24125
    new-instance v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 24145
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->values()[Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->VALUES:[Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24159
    iput p3, p0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 24115
    :cond_0
    sget-object p0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->NEW:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    return-object p0

    .line 24114
    :cond_1
    sget-object p0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->OLD:Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 24142
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

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
            "Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;",
            ">;"
        }
    .end annotation

    .line 24122
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24109
    invoke-static {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->forNumber(I)Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;
    .locals 2

    .line 24149
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 24153
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->VALUES:[Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 24150
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;
    .locals 1

    .line 24078
    const-class v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;
    .locals 1

    .line 24078
    sget-object v0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->$VALUES:[Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 24138
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 24101
    iget v0, p0, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 24134
    invoke-static {}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
