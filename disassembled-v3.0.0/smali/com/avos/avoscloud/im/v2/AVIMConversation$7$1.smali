.class Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

.field final synthetic val$indicatorMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation$7;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;->val$indicatorMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/AVIMException;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 575
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 577
    :cond_0
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 578
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;->val$indicatorMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    if-eqz v0, :cond_1

    .line 580
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 583
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 585
    :cond_2
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$100(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V

    .line 586
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget-object v0, p1, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget-object v1, p1, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$msgId:Ljava/lang/String;

    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget-wide v2, p1, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$timestamp:J

    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget v4, p1, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$limit:I

    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$7$1;->this$1:Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    iget-object v5, p1, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$200(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    :goto_0
    return-void
.end method
