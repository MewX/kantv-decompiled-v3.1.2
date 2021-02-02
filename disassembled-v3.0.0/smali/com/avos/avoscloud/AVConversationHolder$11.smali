.class Lcom/avos/avoscloud/AVConversationHolder$11;
.super Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;
.source "AVConversationHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVConversationHolder;->onSelfBlockedNotify(ZLjava/lang/String;Lcom/avos/avoscloud/Messages$ConvCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVConversationHolder;

.field final synthetic val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

.field final synthetic val$isBlocked:Z

.field final synthetic val$operator:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVConversationHolder;ZLcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    .line 983
    iput-object p1, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->this$0:Lcom/avos/avoscloud/AVConversationHolder;

    iput-boolean p2, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->val$isBlocked:Z

    iput-object p3, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    iput-object p4, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->val$operator:Ljava/lang/String;

    iput-object p5, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVConversationHolder$SimpleCallback;-><init>(Lcom/avos/avoscloud/AVConversationHolder$1;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 5

    .line 986
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->val$isBlocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    const v2, 0xc366

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->val$operator:Ljava/lang/String;

    iget-object v4, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->val$handler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    const v2, 0xc367

    iget-object v3, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->val$operator:Ljava/lang/String;

    iget-object v4, p0, Lcom/avos/avoscloud/AVConversationHolder$11;->val$conversation:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
