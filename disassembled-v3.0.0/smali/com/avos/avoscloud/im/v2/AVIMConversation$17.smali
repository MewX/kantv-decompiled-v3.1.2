.class Lcom/avos/avoscloud/im/v2/AVIMConversation$17;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendNonSideEffectCommand(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 0

    .line 1557
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$17;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$17;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 2

    .line 1561
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$17;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, "callbackHistoryMessages"

    .line 1563
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1566
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$17;->callback:Lcom/avos/avoscloud/AVCallback;

    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMException;

    invoke-direct {v1, p2}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1569
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1571
    :cond_1
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$17;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_2
    :goto_0
    return-void
.end method
