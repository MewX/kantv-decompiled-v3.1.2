.class Lcom/avos/avoscloud/im/v2/AVIMConversation$16;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendParcelToPushService(Lcom/avos/avoscloud/PushServiceParcel;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field final synthetic val$pushServiceParcel:Lcom/avos/avoscloud/PushServiceParcel;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/PushServiceParcel;)V
    .locals 0

    .line 1481
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$pushServiceParcel:Lcom/avos/avoscloud/PushServiceParcel;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p2, :cond_1

    const-wide/16 v0, 0x0

    const-string p2, "message_patch_time"

    .line 1485
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 1486
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RECALL_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$pushServiceParcel:Lcom/avos/avoscloud/PushServiceParcel;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$600(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/PushServiceParcel;JLcom/avos/avoscloud/AVCallback;)V

    goto :goto_0

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->val$pushServiceParcel:Lcom/avos/avoscloud/PushServiceParcel;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$700(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/PushServiceParcel;JLcom/avos/avoscloud/AVCallback;)V

    goto :goto_0

    .line 1492
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;->callback:Lcom/avos/avoscloud/AVCallback;

    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method
