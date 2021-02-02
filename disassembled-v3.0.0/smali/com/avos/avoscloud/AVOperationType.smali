.class final enum Lcom/avos/avoscloud/AVOperationType;
.super Ljava/lang/Enum;
.source "AVConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/AVOperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/AVOperationType;

.field public static final enum kAVOperationPendingOperation:Lcom/avos/avoscloud/AVOperationType;

.field public static final enum kAVOperationSnapshot:Lcom/avos/avoscloud/AVOperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/avos/avoscloud/AVOperationType;

    const/4 v1, 0x0

    const-string v2, "kAVOperationSnapshot"

    invoke-direct {v0, v2, v1}, Lcom/avos/avoscloud/AVOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/AVOperationType;->kAVOperationSnapshot:Lcom/avos/avoscloud/AVOperationType;

    new-instance v0, Lcom/avos/avoscloud/AVOperationType;

    const/4 v2, 0x1

    const-string v3, "kAVOperationPendingOperation"

    invoke-direct {v0, v3, v2}, Lcom/avos/avoscloud/AVOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/AVOperationType;->kAVOperationPendingOperation:Lcom/avos/avoscloud/AVOperationType;

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [Lcom/avos/avoscloud/AVOperationType;

    sget-object v3, Lcom/avos/avoscloud/AVOperationType;->kAVOperationSnapshot:Lcom/avos/avoscloud/AVOperationType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/avos/avoscloud/AVOperationType;->kAVOperationPendingOperation:Lcom/avos/avoscloud/AVOperationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/avos/avoscloud/AVOperationType;->$VALUES:[Lcom/avos/avoscloud/AVOperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/AVOperationType;
    .locals 1

    .line 24
    const-class v0, Lcom/avos/avoscloud/AVOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVOperationType;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/AVOperationType;
    .locals 1

    .line 24
    sget-object v0, Lcom/avos/avoscloud/AVOperationType;->$VALUES:[Lcom/avos/avoscloud/AVOperationType;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/AVOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/AVOperationType;

    return-object v0
.end method
