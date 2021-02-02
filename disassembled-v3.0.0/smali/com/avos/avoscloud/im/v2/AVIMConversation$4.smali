.class Lcom/avos/avoscloud/im/v2/AVIMConversation$4;
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


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;)V
    .locals 1
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

    .line 462
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 464
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 466
    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    :goto_0
    return-void
.end method
