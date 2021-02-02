.class Lcom/avos/avoscloud/im/v2/AVIMConversation$1;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

.field final synthetic val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

.field final synthetic val$messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 250
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$messageOption:Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    sget-object v5, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    iget-object v6, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$000(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
