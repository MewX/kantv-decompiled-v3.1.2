.class Lcom/avos/avoscloud/AVConversationHolder$15;
.super Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVConversationHolder;->onMessageUpdateEvent(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVConversationHolder;

.field final synthetic val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

.field final synthetic val$isRecall:Z

.field final synthetic val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVConversationHolder;ZLcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iput-boolean p2, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->val$isRecall:Z

    iput-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    iput-object p4, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iput-object p5, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;-><init>(Lcom/avos/avoscloud/AVConversationHolder$1;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 5

    .line 1065
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->val$isRecall:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    const v2, 0xc360

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v4, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    const v2, 0xc35f

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v4, p0, Lcom/avos/avoscloud/AVConversationHolder$15;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
