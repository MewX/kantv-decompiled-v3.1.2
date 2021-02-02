.class public final enum Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
.super Ljava/lang/Enum;
.source "AVIMMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVIMMessageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field public static final enum AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field public static final enum AVIMMessageStatusNone:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field public static final enum AVIMMessageStatusRecalled:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field public static final enum AVIMMessageStatusReceipt:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field public static final enum AVIMMessageStatusSending:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field public static final enum AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;


# instance fields
.field statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 398
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const/4 v1, 0x0

    const-string v2, "AVIMMessageStatusNone"

    invoke-direct {v0, v2, v1, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusNone:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const/4 v2, 0x1

    const-string v3, "AVIMMessageStatusSending"

    invoke-direct {v0, v3, v2, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSending:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const/4 v3, 0x2

    const-string v4, "AVIMMessageStatusSent"

    invoke-direct {v0, v4, v3, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 399
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const/4 v4, 0x3

    const-string v5, "AVIMMessageStatusReceipt"

    invoke-direct {v0, v5, v4, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusReceipt:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const/4 v5, 0x4

    const-string v6, "AVIMMessageStatusFailed"

    invoke-direct {v0, v6, v5, v5}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const/4 v6, 0x5

    const-string v7, "AVIMMessageStatusRecalled"

    invoke-direct {v0, v7, v6, v6}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusRecalled:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const/4 v0, 0x6

    .line 397
    new-array v0, v0, [Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    sget-object v7, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusNone:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    aput-object v7, v0, v1

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSending:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusReceipt:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusRecalled:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 402
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 403
    iput p3, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->statusCode:I

    return-void
.end method

.method public static getMessageStatus(I)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 423
    :cond_0
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusRecalled:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object p0

    .line 421
    :cond_1
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object p0

    .line 419
    :cond_2
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusReceipt:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object p0

    .line 417
    :cond_3
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object p0

    .line 415
    :cond_4
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSending:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object p0

    .line 413
    :cond_5
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusNone:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    .locals 1

    .line 397
    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    .locals 1

    .line 397
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object v0
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->statusCode:I

    return v0
.end method
