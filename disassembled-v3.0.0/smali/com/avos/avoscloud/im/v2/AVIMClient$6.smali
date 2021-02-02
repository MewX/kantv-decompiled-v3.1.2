.class Lcom/avos/avoscloud/im/v2/AVIMClient$6;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;->queryConvMemberThroughNetwork(Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$6;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to fetch ConversationMemberInfo, cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$6;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 804
    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMException;

    invoke-direct {v2, p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    const/4 p2, 0x0

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-static {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->access$100(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 789
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$6;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$6;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to parse ConversationMemberInfo result, cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$6;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;

    if-eqz v0, :cond_0

    .line 795
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMException;

    invoke-direct {v1, p1}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    :goto_0
    return-void
.end method
