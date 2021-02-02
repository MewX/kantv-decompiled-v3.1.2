.class public final enum Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;
.super Ljava/lang/Enum;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVIMClientStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

.field public static final enum AVIMClientStatusNone:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

.field public static final enum AVIMClientStatusOpened:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

.field public static final enum AVIMClientStatusPaused:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;


# instance fields
.field code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 835
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    const/4 v1, 0x0

    const-string v2, "AVIMClientStatusNone"

    const/16 v3, 0x6e

    invoke-direct {v0, v2, v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusNone:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    .line 839
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    const/4 v2, 0x1

    const-string v3, "AVIMClientStatusOpened"

    const/16 v4, 0x6f

    invoke-direct {v0, v3, v2, v4}, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusOpened:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    .line 843
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    const/4 v3, 0x2

    const-string v4, "AVIMClientStatusPaused"

    const/16 v5, 0x78

    invoke-direct {v0, v4, v3, v5}, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusPaused:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    const/4 v0, 0x3

    .line 831
    new-array v0, v0, [Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    sget-object v4, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusNone:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusOpened:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusPaused:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 847
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 848
    iput p3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->code:I

    return-void
.end method

.method static getClientStatus(I)Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;
    .locals 1

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x78

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 862
    :cond_0
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusPaused:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    return-object p0

    .line 860
    :cond_1
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusOpened:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    return-object p0

    .line 858
    :cond_2
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusNone:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;
    .locals 1

    .line 831
    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;
    .locals 1

    .line 831
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 852
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->code:I

    return v0
.end method
