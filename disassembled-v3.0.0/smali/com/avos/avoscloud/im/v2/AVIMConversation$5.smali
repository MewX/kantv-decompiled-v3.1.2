.class Lcom/avos/avoscloud/im/v2/AVIMConversation$5;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessages(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

.field final synthetic val$limit:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$limit:I

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

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

    if-eqz p2, :cond_2

    .line 499
    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->getCode()I

    move-result p1

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->getCode()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->getCode()I

    move-result p1

    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    if-eqz p1, :cond_4

    .line 503
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_2

    .line 500
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$limit:I

    iget-object v5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$200(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    goto :goto_2

    .line 507
    :cond_2
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 517
    :cond_3
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-static {p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$100(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V

    .line 519
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$limit:I

    iget-object v5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$200(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    :cond_4
    :goto_2
    return-void
.end method
