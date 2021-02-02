.class public final enum Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;
.super Ljava/lang/Enum;
.source "AVIMMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVIMMessageIOType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

.field public static final enum AVIMMessageIOTypeIn:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

.field public static final enum AVIMMessageIOTypeOut:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;


# instance fields
.field ioType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 435
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "AVIMMessageIOTypeIn"

    invoke-direct {v0, v3, v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeIn:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .line 439
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    const/4 v3, 0x2

    const-string v4, "AVIMMessageIOTypeOut"

    invoke-direct {v0, v4, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeOut:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .line 431
    new-array v0, v3, [Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    sget-object v3, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeIn:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeOut:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 443
    iput p3, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->ioType:I

    return-void
.end method

.method public static getMessageIOType(I)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 457
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeOut:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    return-object p0

    .line 455
    :cond_0
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeOut:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    return-object p0

    .line 453
    :cond_1
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeIn:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;
    .locals 1

    .line 431
    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;
    .locals 1

    .line 431
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    return-object v0
.end method


# virtual methods
.method public getIOType()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->ioType:I

    return v0
.end method
