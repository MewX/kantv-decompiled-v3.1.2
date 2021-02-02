.class public final enum Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;
.super Ljava/lang/Enum;
.source "ConversationMemberRole.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

.field public static final enum MANAGER:Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

.field public static final enum MEMBER:Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;


# instance fields
.field private role:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    const/4 v1, 0x0

    const-string v2, "MANAGER"

    const-string v3, "Manager"

    invoke-direct {v0, v2, v1, v3}, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->MANAGER:Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    .line 10
    new-instance v0, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    const/4 v2, 0x1

    const-string v3, "MEMBER"

    const-string v4, "Member"

    invoke-direct {v0, v3, v2, v4}, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->MEMBER:Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    sget-object v3, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->MANAGER:Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    aput-object v3, v0, v1

    sget-object v1, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->MEMBER:Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    aput-object v1, v0, v2

    sput-object v0, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->$VALUES:[Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->role:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;
    .locals 5

    .line 30
    invoke-static {}, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->values()[Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 31
    iget-object v4, v3, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->role:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;
    .locals 1

    .line 8
    const-class v0, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;
    .locals 1

    .line 8
    sget-object v0, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->$VALUES:[Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->role:Ljava/lang/String;

    return-object v0
.end method
