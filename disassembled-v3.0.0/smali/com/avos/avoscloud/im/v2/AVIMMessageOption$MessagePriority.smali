.class public final enum Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;
.super Ljava/lang/Enum;
.source "AVIMMessageOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessageOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessagePriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

.field public static final enum High:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

.field public static final enum Low:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

.field public static final enum Normal:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;


# instance fields
.field private priorityIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 118
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "High"

    invoke-direct {v0, v3, v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->High:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    .line 119
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    const/4 v3, 0x2

    const-string v4, "Normal"

    invoke-direct {v0, v4, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->Normal:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    .line 120
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    const/4 v4, 0x3

    const-string v5, "Low"

    invoke-direct {v0, v5, v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->Low:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    .line 117
    new-array v0, v4, [Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    sget-object v4, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->High:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    aput-object v4, v0, v1

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->Normal:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->Low:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput p3, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->priorityIndex:I

    return-void
.end method

.method public static getProiority(I)Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 131
    :cond_0
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->Low:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    return-object p0

    .line 129
    :cond_1
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->Normal:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    return-object p0

    .line 127
    :cond_2
    sget-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->High:Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;
    .locals 1

    .line 117
    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;
    .locals 1

    .line 117
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;->priorityIndex:I

    return v0
.end method
