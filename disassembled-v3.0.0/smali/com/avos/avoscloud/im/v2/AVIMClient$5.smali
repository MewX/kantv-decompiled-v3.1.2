.class Lcom/avos/avoscloud/im/v2/AVIMClient$5;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;->queryConversationMemberInfo(Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field final synthetic val$cb:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;

.field final synthetic val$queryConditions:Lcom/avos/avoscloud/QueryConditions;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;Lcom/avos/avoscloud/QueryConditions;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$5;->val$cb:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;

    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$5;->val$queryConditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to refresh realtime session token. cause: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 763
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$5;->val$cb:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$5;->val$queryConditions:Lcom/avos/avoscloud/QueryConditions;

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$5;->val$cb:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;

    invoke-static {p1, p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->access$000(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V

    :goto_0
    return-void
.end method
