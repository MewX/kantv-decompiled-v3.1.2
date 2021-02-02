.class Lcom/avos/avoscloud/im/v2/AVIMConversation$2;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
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

    .line 340
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

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

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 344
    sget-boolean p2, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-eqz p2, :cond_0

    .line 345
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-static {p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$100(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V

    .line 347
    :cond_0
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method
