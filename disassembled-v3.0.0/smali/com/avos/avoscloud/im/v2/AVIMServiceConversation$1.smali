.class Lcom/avos/avoscloud/im/v2/AVIMServiceConversation$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVIMServiceConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;->getSubscriberCount(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation$1;->this$0:Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to query rtm/conversation/subscribed cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;

    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMException;

    invoke-direct {v1, p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 73
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;

    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMException;

    invoke-direct {v1, p2}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 76
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "response is empty for request rtm/conversation/subscribed"

    .line 77
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    :try_start_0
    new-instance v1, Lcom/avos/avoscloud/AVResponse;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVResponse;-><init>()V

    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVResponse;

    .line 82
    iget p2, p1, Lcom/avos/avoscloud/AVResponse;->count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "failed to parse result for request rtm/conversation/subscribed"

    .line 84
    invoke-static {v1, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 87
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :goto_1
    return-void
.end method
