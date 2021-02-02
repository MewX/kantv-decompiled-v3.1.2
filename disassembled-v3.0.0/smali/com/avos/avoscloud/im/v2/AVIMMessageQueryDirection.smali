.class public final enum Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;
.super Ljava/lang/Enum;
.source "AVIMMessageQueryDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

.field public static final enum AVIMMessageQueryDirectionFromNewToOld:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

.field public static final enum AVIMMessageQueryDirectionFromOldToNew:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

.field public static final enum AVIMMessageQueryDirectionUnknown:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

.field private static descriptions:[Ljava/lang/String;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    const/4 v1, 0x0

    const-string v2, "AVIMMessageQueryDirectionUnknown"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionUnknown:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    .line 9
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    const/4 v2, 0x1

    const-string v3, "AVIMMessageQueryDirectionFromNewToOld"

    invoke-direct {v0, v3, v2, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionFromNewToOld:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    .line 10
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    const/4 v3, 0x2

    const-string v4, "AVIMMessageQueryDirectionFromOldToNew"

    invoke-direct {v0, v4, v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionFromOldToNew:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    const/4 v0, 0x3

    .line 7
    new-array v4, v0, [Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    sget-object v5, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionUnknown:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    aput-object v5, v4, v1

    sget-object v5, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionFromNewToOld:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    aput-object v5, v4, v2

    sget-object v5, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionFromOldToNew:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    aput-object v5, v4, v3

    sput-object v4, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    .line 12
    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "Unknown"

    aput-object v4, v0, v1

    const-string v1, "Old"

    aput-object v1, v0, v2

    const-string v1, "New"

    aput-object v1, v0, v3

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->descriptions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->code:I

    .line 16
    iput p3, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->code:I

    return-void
.end method

.method public static parseFromCode(I)Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 34
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionUnknown:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    return-object p0

    .line 32
    :cond_0
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionFromOldToNew:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionFromNewToOld:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;
    .locals 1

    .line 7
    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;
    .locals 1

    .line 7
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 24
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->descriptions:[Ljava/lang/String;

    iget v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->code:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
