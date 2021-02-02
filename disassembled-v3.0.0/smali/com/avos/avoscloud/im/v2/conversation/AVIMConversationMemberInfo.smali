.class public Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;
.super Ljava/lang/Object;
.source "AVIMConversationMemberInfo.java"


# static fields
.field public static ATTR_CONVID:Ljava/lang/String; = "conversationId"

.field private static ATTR_CREATEDAT:Ljava/lang/String; = "createdAt"

.field private static ATTR_INVITER:Ljava/lang/String; = "inviter"

.field public static ATTR_MEMBERID:Ljava/lang/String; = "peerId"

.field private static ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field public static ATTR_OJBECTID:Ljava/lang/String; = "infoId"

.field public static ATTR_ROLE:Ljava/lang/String; = "role"


# instance fields
.field private conversationId:Ljava/lang/String;

.field private createdAt:Ljava/lang/String;

.field private inviter:Ljava/lang/String;

.field private isOwner:Z

.field private memberId:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private role:Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->conversationId:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->memberId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->isOwner:Z

    .line 30
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->createdAt:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->objectId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->inviter:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->nickname:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->objectId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->conversationId:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->memberId:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->role:Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    return-void
.end method

.method public static createInstance(Ljava/util/Map;)Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->ATTR_CONVID:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    sget-object v1, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->ATTR_MEMBERID:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    sget-object v2, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->ATTR_ROLE:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    sget-object v3, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->ATTR_OJBECTID:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 186
    invoke-static {v2}, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->fromString(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    move-result-object v2

    .line 187
    new-instance v3, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;)V

    return-object v3
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getInviter()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->inviter:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->memberId:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->role:Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    return-object v0
.end method

.method public getUpdateAttrs()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    sget-object v1, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->ATTR_MEMBERID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->getMemberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->ATTR_ROLE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->getRole()Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->ATTR_OJBECTID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public isOwner()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->isOwner:Z

    return v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setInviter(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->inviter:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setRole(Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->role:Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", memberId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->memberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->role:Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
